import argparse
import csv
import inspect
import json
import os
import pandas as pd
import string
import sys
import time
from multiprocessing import Pool, Process, Manager
from utils import printProgress


class FeatureType:
    T_INFO = 'dyna_info'
    T_REG = 'dyna_reg'

total_pe_count = 0
feature_type = None

REGS = ['EAX', 'EBX', 'ECX', 'EDX',
        'CS', 'DS', 'ES', 'FS', 'GS', 'SS',
        'ESI', 'EDI', 'EBP', 'EIP', 'ESP',
        'EFLAGS']


def to_csv(all_features, pe_stats, all_pe, output):
    with open(output, 'wb') as fp:
        writer = csv.writer(fp, delimiter=',')
        row = ['ID']
        row.extend(all_features)

        writer.writerow(row)

        for pe_id in sorted(all_pe):
            stats = pe_stats.get(pe_id)
            row = [pe_id]

            for f in all_features:
                if stats is None:
                    row.append(-999)
                else:
                    row.append(stats.get(f, 0))

            writer.writerow(row)


def list_feature_type():
    features = []

    members = inspect.getmembers(FeatureType)
    for n, v in members:
        if n.startswith('T_'):
            features.append(v)

    return features


def _extract(info, feature_type, pe_file, def_features,
             ret_all_features, ret_pe_stats):

    pe_id = os.path.basename(pe_file).replace('.txt', '')

    ret_pe_stats[pe_id] = {}

    if not os.path.isfile(pe_file):
        return

    stats = {}

    if feature_type == FeatureType.T_INFO:
        feature = 'file_size'
        size = os.stat(pe_file).st_size
        stats[feature] = stats.get(feature, 0) + size
        ret_all_features[feature] = 1

    with open(pe_file, 'rb', buffering=2<<16) as fp:
        while True:
            lines = fp.readlines(100000)

            if not lines:
                break

            content = ' '.join(lines)
            lower_content = content.lower()
            if feature_type == FeatureType.T_INFO:
                feature = 'line_count'
                line_count = len(lines)
                stats[feature] = stats.get(feature, 0) + line_count
                ret_all_features[feature] = 1

                feature = 'call'
                count = string.count(content, 'Function call:')
                stats[feature] = stats.get(feature, 0) + count
                ret_all_features[feature] =\
                    ret_all_features.get(feature, 0) + count

                feature = 'return'
                count = string.count(content, 'Returning from call')
                stats[feature] = stats.get(feature, 0) + count
                ret_all_features[feature] =\
                    ret_all_features.get(feature, 0) + count

                feature = 'admin'
                count = string.count(lower_content, 'admin')
                stats[feature] = stats.get(feature, 0) + count
                ret_all_features[feature] =\
                    ret_all_features.get(feature, 0) + count

                feature = 'arg'
                count = string.count(lower_content, 'arg_')
                stats[feature] = stats.get(feature, 0) + count
                ret_all_features[feature] =\
                    ret_all_features.get(feature, 0) + count

                feature = 'reg_count'
                for r in REGS:
                    count = string.count(content, r)
                    stats[feature] = stats.get(feature, 0) + count
                    ret_all_features[feature] =\
                        ret_all_features.get(feature, 0) + count

                feature = 'exe'
                count = string.count(lower_content, '.exe')
                stats[feature] = stats.get(feature, 0) + count
                ret_all_features[feature] =\
                    ret_all_features.get(feature, 0) + count

                feature = 'dll'
                count = string.count(lower_content, '.dll')
                stats[feature] = stats.get(feature, 0) + count
                ret_all_features[feature] =\
                    ret_all_features.get(feature, 0) + count

                feature = 'dos'
                count = string.count(content, 'DOS mode')
                stats[feature] = stats.get(feature, 0) + count
                ret_all_features[feature] =\
                    ret_all_features.get(feature, 0) + count

            elif feature_type == FeatureType.T_REG:
                for feature in REGS:
                    count = string.count(content, feature)
                    stats[feature] = stats.get(feature, 0) + count
                    stats['total'] = stats.get('total', 0) + count
                    ret_all_features[feature] =\
                        ret_all_features.get(feature, 0) + count
                    ret_all_features['total'] =\
                        ret_all_features.get('total', 0) + count

        ret_pe_stats[pe_id] = stats


def parallel(params):
    for param in params:
        info = param[0]
        info['extracted_pe'] = info.get('extracted_pe', 0) + 1
        keywords_values = _extract(*param)
        printProgress(
            info.get('extracted_pe'), info.get('total_pe'),
            prefix='Progress:', suffix='Complete', barLength=50,
            print_count=True)


def parallel_extract(args):
    N_GROUPS = 50

    pe_files = [
        os.path.join(args.source_dir, d) for d in os.listdir(args.source_dir)]

    file_count = len(pe_files)
    max_file_count = args.max

    if args.max and args.max < file_count:
        pe_files = pe_files[:max_file_count]

    total_pe = len(pe_files)

    # If there are predefined features, only extract them
    def_features = None
    f = './%s_def.json' % (args.feature)
    if os.path.isfile(f):
        with open(f, 'rb') as fp:
            def_features = json.load(fp) 

    manager = Manager()
    info = manager.dict()
    info['total_pe'] = total_pe
    info['extracted_pe'] = 0

    all_features = manager.dict()
    pe_stats = manager.dict()

    pool = Pool(processes=int(args.n_process))

    params = [
        zip(
            [info] * len(pe_files[i::N_GROUPS]),
            [args.feature] * len(pe_files[i::N_GROUPS]),
            pe_files[i::N_GROUPS],
            [def_features] * len(pe_files[i::N_GROUPS]),
            [all_features] * len(pe_files[i::N_GROUPS]),
            [pe_stats] * len(pe_files[i::N_GROUPS])
        ) for i in range(N_GROUPS)
    ]

    print '\n\n%s PE files. Start to extract !!!' % total_pe
    if def_features is not None:
        print '%s predefined %s features found.' % (len(def_features), args.feature)
    print '\n'

    start_time = int(time.time())

    result = list(pool.imap(parallel, params))

    end_time = int(time.time())

    all_features = all_features._getvalue()

    if def_features is not None:
        for def_f in def_features:
            if def_f not in all_features:
                all_features[def_f] = 0

    pe_stats = pe_stats._getvalue()

    print '\n%s PE files Complete!!!' % len(pe_stats)
    print '%s %s features found.\n' % (len(all_features), args.feature)
    print 'Total time: %s seconds\n' % (end_time - start_time)

    output = './%s_%s_all.json' % (args.feature, args.data)
    with open(output, 'wb') as fp:
        json.dump(all_features, fp)
        print '%s ------- OK' % output

    output = './%s_%s_stats.json' % (args.feature, args.data)
    with open(output, 'wb') as fp:
        json.dump(pe_stats, fp)
        print '%s ------- OK' % output

    all_pe = [d for d in os.listdir(args.pe_dir)]

    if def_features is not None:
        output = './%s_%s_%s.csv' % (args.feature, args.data, len(def_features))
        to_csv(def_features, pe_stats, all_pe, output)
    else:
        output = './%s_%s_%s.csv' % (args.feature, args.data, len(all_features))
        to_csv(all_features.keys(), pe_stats, all_pe, output)
    print '%s ------- OK' % output


if __name__ == "__main__":
    '''
    Example of raw files:
    cd D:\ML_data\parallel_test
    python D:\sublime_projects\sftp\ml_contest\Mal-Class\feature_extract\dyna_dump.py extract --feature dyna_call --data train --source_dir D:\ML_data\dataset\DynaDump-Train --n_process 2 --pe_dir D:\ML_data\dataset\train\
        Output:
            dll_train_stats.json
            dll_train_.json
            dll_train_count.csv
    '''

    parser = argparse.ArgumentParser()

    if sys.argv[1] == 'extract':
        parser = argparse.ArgumentParser(
            prog = '%s %s' % (sys.argv[0], sys.argv[1]),
            description='To extract features from string table.')

        parser.add_argument("--feature", type=str,
                            required=True,
                            choices = list_feature_type(),
                            help='Feature Type')

        parser.add_argument("--data", type=str, default=None,
                            choices = ['train', 'test', 'test-new'],
                            required=True,
                            help='Data Type')

        parser.add_argument("--source_dir", type=str, default=None,
                            required=True,
                            help='Source folder')

        parser.add_argument("--pe_dir", type=str, default=None,
                            required=True,
                            help='PE folder')

        parser.add_argument("--n_process", type=int,
                            default=1,
                            help='Number of processes')

        parser.add_argument("--max", type=int,
                            default=None,
                            help='Max number of PE files')

        args = parser.parse_args(args=sys.argv[2:])

        parallel_extract(args)

    elif sys.argv[1] == 'extract_top':
        parser.add_argument("--top", type=int, default=None, 
                            help='Top N feature')
        pass
    elif sys.argv[1] == 'find_top':
        pass
    else:
        sys.exit()
