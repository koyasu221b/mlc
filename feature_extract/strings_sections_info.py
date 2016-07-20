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


class File:
    T_STRINGS = 'strings'
    T_SECTIONS = 'sections'
    T_INFO = 'info'


class FeatureType:
    # Read from strings
    #T_DLL = 'dll'
    #T_FILE = 'file'
    #T_FUNC = 'func'
    #T_KEYWORD = 'keyword'
    T_LONGEST = 'longest'
    #T_LONGEST_WO_EMPTY = 'longest-wo-empty'
    T_LENGTH_DIS = 'length_dis'
    #T_LENGTH = 'length'
    #T_COUNT = 'count'

    # Read from sections
    T_SECTION = 'section_size'

    # Read from sections
    T_INFO = 'info'


def to_csv(all_features, pe_stats, output):
    with open(output, 'wb') as fp:
        writer = csv.writer(fp, delimiter=',')
        row = ['ID']
        row.extend(all_features)

        writer.writerow(row)

        for pe_id in sorted(pe_stats):
            stats = pe_stats.get(pe_id)
            row = [pe_id]
            for f in all_features:
                row.append(stats.get(f, 0))
            writer.writerow(row)


def list_feature_type(c):
    features = []

    members = inspect.getmembers(c)
    for n, v in members:
        if n.startswith('T_'):
            features.append(v)

    return features


def _extract_strings(f, pe_id, feature_type, def_features,
                     ret_all_features, ret_pe_stats):
    stats = {}
    with open(f, 'rb') as fp:
        for line in fp:
            if len(line) < 9:
                continue

            s = line[8:].rstrip()

            if feature_type == FeatureType.T_LONGEST:
                longest = stats.get('longest', 0)
                leng = len(s)
                if leng > longest:
                    stats['longest'] = leng
                ret_all_features['longest'] =\
                    ret_all_features.get('longest', 0) + 1
            elif feature_type == FeatureType.T_LENGTH_DIS:
                leng = len(s)
                if leng == 0:
                    feature = 'leng_0'
                if leng > 0 and leng < 10:
                    feature = 'leng_1'
                elif leng >= 10 and leng < 100:
                    feature = 'leng_10'
                elif leng >= 100 and leng < 1000:
                    feature = 'leng_100'
                elif leng >= 1000 and leng < 10000:
                    feature = 'leng_1000'
                elif leng >= 10000 and leng < 100000:
                    feature = 'leng_10000'
                elif leng >= 100000 and leng < 1000000:
                    feature = 'leng_100000'
                elif leng >= 1000000 and leng < 10000000:
                    feature = 'leng_1000000'
                elif leng >= 10000000:
                    feature = 'leng_10000000'

                stats[feature] = stats.get(feature, 0) + 1
                ret_all_features[feature] =\
                    ret_all_features.get(feature, 0) + 1

        ret_pe_stats[pe_id] = stats


def _extract_sections(f, pe_id, feature_type, def_features,
                 ret_all_features, ret_pe_stats):
    stats = {}
    with open(f, 'rb') as fp:
        content = json.load(fp, encoding="latin-1")

        for section in content:
            name = ''.join(
                [c for c in section.get('Name') if c in string.printable])
            name = name.replace('\r', '')

            raw_size = section.get('RawSize', 0)
            f_raw_size = '%s-%s' % (name, 'raw_size')
            if def_features is None or f_raw_size in def_features:
                stats[f_raw_size] = stats.get(f_raw_size, 0) + raw_size
                ret_all_features[f_raw_size] =\
                        ret_all_features.get(f_raw_size, 0) + raw_size

            virtual_size = section.get('VirtualSize', 0)
            f_virtual_size = '%s-%s' % (name, 'virtual_size')
            if def_features is None or f_virtual_size in def_features:
                stats[f_virtual_size] =\
                    stats.get(f_virtual_size, 0) + virtual_size
                ret_all_features[f_virtual_size] =\
                    ret_all_features.get(f_virtual_size, 0) + virtual_size

    ret_pe_stats[pe_id] = stats


def _extract_info(f, pe_id, feature_type, def_features,
                 ret_all_features, ret_pe_stats):

    features = ['AddressOfEntryPoint', 'BaseOfCode', 'BaseOfData',
                'Characteristics', 'DllCharacteristics', 'FileAlignment',
                'FileEntropy', 'FileSize', 'ImageBase',
                'ImageVersion', 'LegalCopyright', 'LinkerVersion',
                'LoaderFlags', 'NumberOfRvaAndSizes', 'NumberOfSections',
                'NumberOfSymbols', 'OperatingSystemVersion',
                'SectionAlignment', 'SizeOfCode', 'SizeOfHeaders',
                'SizeOfHeapCommit', 'SizeOfHeapReserve', 'SizeOfImage',
                'SizeOfInitializedData', 'SizeOfOptionalHeader',
                'SizeOfStackCommit', 'SizeOfStackReserve',
                'SizeOfUninitializedData', 'Subsystem', 'SubsystemVersion',
                'TimeDateStamp']

    stats = {}
    with open(f, 'rb') as fp:
        content = json.load(fp)
        for f in features:
            if f in content:
                inc = 1
            else:
                inc = 0

            value = content.get(f, -999)
            try:
                result = int(value, 0)
            except:
                try:
                    result = float(value)
                except:
                    result = len(value)

            ret_all_features[f] =\
                ret_all_features.get(f, 0) + inc

            stats[f] = result

        ret_pe_stats[pe_id] = stats


def _extract(info, feature_type, pe_dir, pe_file, def_features,
             ret_all_features, ret_pe_stats):

    pe_id = os.path.basename(pe_dir)

    ret_pe_stats[pe_id] = {}

    f = os.path.join(pe_dir, pe_file)
    if not os.path.isfile(f):
        return

    if pe_file == File.T_STRINGS:
        _extract_strings(f, pe_id, feature_type, def_features,
            ret_all_features, ret_pe_stats)
    elif pe_file == File.T_SECTIONS:
        _extract_sections(f, pe_id, feature_type, def_features,
            ret_all_features, ret_pe_stats)
    elif pe_file == File.T_INFO:
        _extract_info(f, pe_id, feature_type, def_features,
            ret_all_features, ret_pe_stats)

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

    pe_dirs = sorted([
        os.path.join(args.source_dir, d) for d in os.listdir(args.source_dir)])

    file_count = len(pe_dirs)
    max_file_count = args.max

    if args.max and args.max < file_count:
        pe_dirs = pe_dirs[:max_file_count]

    total_pe = len(pe_dirs)

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
            [info] * len(pe_dirs[i::N_GROUPS]),
            [args.feature] * len(pe_dirs[i::N_GROUPS]),
            pe_dirs[i::N_GROUPS],
            [args.source_file] * len(pe_dirs[i::N_GROUPS]),
            [def_features] * len(pe_dirs[i::N_GROUPS]),
            [all_features] * len(pe_dirs[i::N_GROUPS]),
            [pe_stats] * len(pe_dirs[i::N_GROUPS])
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

    output = './%s_%s_count.csv' % (args.feature, args.data)
    if def_features is not None:
        to_csv(def_features, pe_stats, output)
    else:
        to_csv(all_features.keys(), pe_stats, output)
    print '%s ------- OK' % output


if __name__ == "__main__":
    '''
    Example of raw files:
        cd D:\ML_data\parallel_test
        python D:\sublime_projects\sftp\ml_contest\Mal-Class\feature_extract\strings_n_sections.py extract --feature longest --data train --source_dir D:\ML_data\dataset\train\ --n_process 4 --max 100
        python D:\sublime_projects\sftp\ml_contest\Mal-Class\feature_extract\strings_n_sections.py extract --feature longest --data test-new --source_dir D:\ML_data\dataset\test-new\ --n_process 2
        Output:
            dll_train_stats.json
            dll_train_.json
            dll_train_count.csv
    '''

    parser = argparse.ArgumentParser(
        prog = '%s' % (sys.argv[0]),
        description='To extract features from %s' % ', '.join(
            list_feature_type(File)))

    parser.add_argument("--feature", type=str,
                        required=True,
                        choices = list_feature_type(FeatureType),
                        help='Feature Type')
    parser.add_argument("--data", type=str, default=None,
                        choices = ['train', 'test', 'test-new'],
                        required=True,
                        help='Data Type')
    parser.add_argument("--source_dir", type=str, default=None,
                        required=True,
                        help='Source folder')
    parser.add_argument("--source_file", type=str,
                        required=True,
                        choices = list_feature_type(File),
                        help='Source file')
    parser.add_argument("--n_process", type=int,
                        default=1,
                        help='Number of processes')
    parser.add_argument("--max", type=int,
                        default=None,
                        help='Max number of PE files')
    args = parser.parse_args(args=sys.argv[1:])
    parallel_extract(args)
