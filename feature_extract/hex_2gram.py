import os, gzip, re
from multiprocessing import Pool
from utils import printProgress
from os.path import isfile, join, isdir
from os import listdir
import sys
import csv
g_train_root = ''

gram_ids = ['hex_2_gram_{0}'.format(i) for i in range(65536)]


def byte_2gram(dir_name):
    twoByte = [0]*16**4
    file_root = dir_name
    filenames = [f for f in listdir(file_root) if isfile(join(file_root, f))]
    for filename in filenames:
        file_path = file_root + '/' + filename
        with open(file_path) as f:
            for row in f:
                codes = row[:-2].split()[1:]
                codes_2g = codes[:-1]
                for i in range(len(codes_2g)):
                    codes_2g[i]+= codes[i+1]

                twoByteCode = []
                for i in codes_2g:
                    if '??' not in i:
                        twoByteCode += [int(i,16)]

                for i in twoByteCode:
                    twoByte[i] += 1
    return twoByte


def parallel_get2gram(ids):
    output = []
    global g_train_root
    total_j = len(ids)
    j = 0
    for i in ids:
        fileid = i[1]
        print fileid
        printProgress(j, total_j, prefix = 'Progress:', suffix = 'Complete', barLength = 50)
        j+=1
        dir_path = g_train_root + '/' + fileid
        r = byte_2gram(dir_path)
        output.append([fileid] + r)
    return output


def preprocessing(process):
    global g_train_root
    ids = [f for f in listdir(g_train_root) if isdir(join(g_train_root, f))]
    n_groups = 50
    n_process = int(process)
    groups = n_groups
    pool = Pool(processes=n_process)
    results = list(pool.imap(
        parallel_get2gram, [zip(range(len(ids))[i::groups],ids[i::groups]) for i in range(groups)]))
    total_output = []
    for i in results:
        total_output+=i

    f = open('hex_2_gram.csv', 'wb')
    w = csv.writer(f)
    w.writerow(['ID'] + gram_ids)
    for i in total_output:
        w.writerow(i)
    f.close()

if __name__ == "__main__":
    # train_root = '../data/dataset/train'
    # test_root = '../data/dataset/test'
    """
    Usage:
        python hex_2gram ../data/dataset-hexdump/train/ 4
    """
    train_root = sys.argv[1]
    process = int(sys.argv[2])

    global g_train_root
    global g_n_gram

    g_train_root = train_root
    preprocessing(process)
