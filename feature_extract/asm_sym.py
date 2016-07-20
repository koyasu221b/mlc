import re
import csv
import sys
from collections import *
import os
from os import listdir
from os.path import isfile, join
from utils import printProgress
from multiprocessing import Pool
g_train_root = ''

symbols = ['*', '-', '+', '[', ']', '@', '?']

def asm_symbols(filename):
    symbols = [0]*7
    with open(filename) as f:
        for row in f:
            if '*' in row:
                symbols[0] += 1
            if '-' in row:
                symbols[1] += 1
            if '+' in row:
                symbols[2] += 1
            if '[' in row:
                symbols[3] += 1
            if ']' in row:
                symbols[4] += 1
            if '@' in row:
                symbols[5] += 1
            if '?' in row:
                symbols[6] += 1
        return symbols

def parallel_get_sym(ids):
    output = []
    global g_train_root
    total_j = len(ids)
    j = 0
    for i in ids:
        fileid = i[1]
        printProgress(j, total_j, prefix = 'Progress:', suffix = 'Complete', barLength = 50)
        j+=1
        file_path = g_train_root + '/' + fileid
        fileid = fileid[:-4]
        keywords_values = asm_symbols(file_path)
        output.append([fileid] + keywords_values)
    return output

def preprocessing(process):
    global g_train_root
    ids = [f for f in listdir(g_train_root) if isfile(join(g_train_root, f))]
    n_groups = 50
    n_process = int(process)
    groups = n_groups
    pool = Pool(processes=n_process)
    results = list(pool.imap(
        parallel_get_sym, [zip(range(len(ids))[i::groups],ids[i::groups]) for i in range(groups)]))
    total_output = []
    for i in results:
        total_output+=i

    f = open('asm_sym.csv', 'wb')
    w = csv.writer(f)
    w.writerow(['ID'] + symbols)
    for i in total_output:
        w.writerow(i)
    f.close()

if __name__ == "__main__":
    # train_root = '../data/dataset/train'
    # test_root = '../data/dataset/test'
    """
    Usage:
        python asm_sym.py ../dataset/asm/train 4
    """
    train_root = sys.argv[1]
    process = int(sys.argv[2])

    global g_train_root
    global g_n_gram

    g_train_root = train_root
    preprocessing(process)
