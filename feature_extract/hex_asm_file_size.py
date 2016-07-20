import argparse
import csv
import inspect
import json
import os
import mahotas
import mahotas.features
import numpy
import pandas as pd
import string
import sys
import time
import uuid
import zipfile
from io import BytesIO
from mahotas.features.lbp import lbp
from math import log
from multiprocessing import Pool, Process, Manager
from utils import printProgress


total_pe_count = 0

HEX_FILE_SIZE = 'hex_file_size'
ASM_FILE_SIZE = 'asm_file_size'

feature_type = HEX_FILE_SIZE

features = ['file_size', 'zip_size', 'comp_rate']


def to_csv(feature_type, data_type, pe_stats, all_pe):
    output = '%s_%s_%s.csv' % (feature_type, data_type, len(features))

    if all_pe is None:
        pe_list = sorted(pe_stats.keys())
    else:
        pe_list = sorted(all_pe)

    with open(output, 'wb') as fp:
        
        writer = csv.writer(fp, delimiter=',')
        row = ['ID']
        row.extend(features)

        writer.writerow(row)

        for no, pe_id in enumerate(pe_list, 1):
            print 'Write no %s (%s) in to csv' % (no, pe_id)

            row = [pe_id]
            for f in features:
                row.append(pe_stats[pe_id][f])

            writer.writerow(row)

    print '%s ------- OK' % output


def _extract(feature_type, info, pe_file, def_features,
             ret_all_features, ret_pe_stats):
    pe_id = os.path.basename(pe_file).replace(".asm", "")
    ret_pe_stats[pe_id] = {}

    stats = {}

    if feature_type == HEX_FILE_SIZE:

        sec_files = [
            os.path.join(pe_file, d) for d in os.listdir(pe_file)]

        if len(sec_files):
            file_size = 0

            tmp_zip = 'temp_%s.zip' % str(uuid.uuid4())

            with zipfile.ZipFile(tmp_zip, 'w') as zip_file:
                for sec in sec_files:
                    if not os.path.isfile(sec):
                        continue

                    file_size += float(os.path.getsize(sec))

                    zip_file.write(sec, compress_type=zipfile.ZIP_DEFLATED)

                zip_size = float(zip_file.infolist()[0].compress_size)
                zip_file.close()

                os.remove(tmp_zip)

                stats['file_size'] = file_size
                stats['zip_size'] = zip_size

                if file_size:
                    stats['comp_rate'] = zip_size / file_size
                else:
                    stats['comp_rate'] = 0

        else:
            for f in features:
                stats[f] = -999

    else:
        file_size = 0

        tmp_zip = 'temp_%s.zip' % str(uuid.uuid4())

        with zipfile.ZipFile(tmp_zip, 'w') as zip_file:
            file_size = float(os.path.getsize(pe_file))

            zip_file.write(pe_file, compress_type=zipfile.ZIP_DEFLATED)

            zip_size = float(zip_file.infolist()[0].compress_size)
            zip_file.close()

            os.remove(tmp_zip)

            stats['file_size'] = file_size
            stats['zip_size'] = zip_size

            if file_size:
                stats['comp_rate'] = zip_size / file_size
            else:
                stats['comp_rate'] = 0

    ret_pe_stats[pe_id] = stats

    for f in features:
        ret_all_features[f] =\
            ret_all_features.get(f, 0) + 1


def parallel(params):
    for param in params:
        info = param[1]
        info['extracted_pe'] = info.get('extracted_pe', 0) + 1
        keywords_values = _extract(*param)
        printProgress(
            info.get('extracted_pe'), info.get('total_pe'),
            prefix='Progress:', suffix='Complete', barLength=50,
            print_count=True)


def parallel_extract(args):
    global feature_type

    N_GROUPS = 50

    pe_files = [
        os.path.join(args.source_dir, d) for d in os.listdir(args.source_dir)]


    pe_files = sorted(pe_files)
    file_count = len(pe_files)

    if args.pe_from:
       pe_from = args.pe_from
    else:
       pe_from = 1

    if args.pe_to:
       pe_to = args.pe_to
    else:
       pe_to = file_count

    pe_files = pe_files[pe_from-1:pe_to]

    total_pe = len(pe_files)

    # If there are predefined features, only extract them
    def_features = None
    f = './%s_def.json' % feature_type
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
            [feature_type] * len(pe_files[i::N_GROUPS]),
            [info] * len(pe_files[i::N_GROUPS]),
            pe_files[i::N_GROUPS],
            [def_features] * len(pe_files[i::N_GROUPS]),
            [all_features] * len(pe_files[i::N_GROUPS]),
            [pe_stats] * len(pe_files[i::N_GROUPS])
        ) for i in range(N_GROUPS)
    ]

    print '\n\n%s PE files. Start to extract %s !!!' % (total_pe, feature_type)
    if def_features is not None:
        print '%s predefined %s features found.' % (len(def_features), feature_type)
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
    print '%s %s features found.\n' % (len(all_features), feature_type)
    print 'Total time: %s seconds\n' % (end_time - start_time)

    output = './%s_%s_all_%s-%s.json' % (feature_type, args.data, pe_from, pe_to)
    with open(output, 'wb') as fp:
        json.dump(all_features, fp)
        print '%s ------- OK' % output

    output = './%s_%s_stats_%s-%s.json' % (feature_type, args.data, pe_from, pe_to)
    with open(output, 'wb') as fp:
        json.dump(pe_stats, fp)
        print '%s ------- OK' % output

    if args.pe_dir:
        all_pe = [d for d in os.listdir(args.pe_dir)]
    else:
        all_pe = None

    to_csv(feature_type, args.data, pe_stats, all_pe)


if __name__ == "__main__":
    '''
    Example of raw files:
    cd D:\ML_data\parallel_test

    For HEX,
    python D:\sublime_projects\sftp\ml_contest\Mal-Class\feature_extract\hex_file_size.py hex --data train --source_dir D:\ML_data\dataset\dataset-hexdump-train\dataset-hexdump\train\ --n_process 2 --pe_from 1 --pe_to 5

    For ASM,
    python D:\sublime_projects\sftp\ml_contest\Mal-Class\feature_extract\hex_file_size.py asm --data test --source_dir D:\ML_data\dataset\dataset-hexdump-test\dataset-hexdump\test\ --n_process 2 --pe_from 1 --pe_to 5

    '''

    if sys.argv[1] == 'asm':
        feature_type = ASM_FILE_SIZE
    elif sys.argv[1] == 'hex':
        feature_type = HEX_FILE_SIZE
    else:
        sys.exit()

    parser = argparse.ArgumentParser(
        prog = '%s %s' % (sys.argv[0], sys.argv[1]),
        description='To extract features from string table.')

    parser.add_argument("--data", type=str, default=None,
                        choices = ['train', 'test', 'test-new'],
                        required=True,
                        help='Data Type')

    parser.add_argument("--source_dir", type=str, default=None,
                        required=True,
                        help='Source folder')

    parser.add_argument("--pe_dir", type=str, default=None,
                        help='PE folder')

    parser.add_argument("--n_process", type=int,
                        default=1,
                        help='Number of processes')

    parser.add_argument("--pe_from", type=int,
                        default=None,
                        help='From Nth PE file. 1~N')

    parser.add_argument("--pe_to", type=int,
                        default=None,
                        help='To Nth PE file')

    args = parser.parse_args(args=sys.argv[2:])


    if args.source_dir.endswith('.json'):
        with open(args.source_dir, 'rb') as fp:
            pe_stats = json.load(fp)
            pe_list = sorted(pe_stats.keys())

            to_csv(feature_type, args.data, pe_stats, None)

    else:
        parallel_extract(args)
