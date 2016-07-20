import re
import sys
from collections import *
from os import listdir
from os.path import isfile, join
from utils import write_csv
from utils import write_pickle
import pandas as pd
import json
n_gram_list = []
dataframelist = []
from utils import printProgress
from multiprocessing import Pool
import pickle
import csv
from ast import literal_eval
g_train_root = ''
g_n_gram = 2


def getOpcodeSequence(filename):
    p = re.compile(r'\n\t\t(?!align)([a-z]+)',re.S)
    with open(filename) as f:
        opcode_seq = re.findall(p,f.read())
        #if opc != "align":
    return opcode_seq


def getOpcodeNgram(ops ,n = 3):
    opngramlist = [tuple(ops[i:i+n]) for i in range(len(ops)-n)]
    opngram = Counter(opngramlist)
    return opngram

def parallel_counter(data):
    c = Counter([])
    for i in data:
        c+=i[1]
    return c

def parallel_getOps(ids):
    global g_train_root
    global g_n_gram
    tmp_fileid_map = {}
    total_j = len(ids)
    j = 0
    for i in ids:
        fileid = i[1]
        printProgress(j, total_j, prefix = 'Progress:', suffix = 'Complete', barLength = 50)
        j+=1
        file_path = g_train_root + '/' + fileid
        ops = getOpcodeSequence(file_path)
        n_gram = getOpcodeNgram(ops, g_n_gram)
        fileid = fileid[:-4]
        tmp_fileid_map[fileid] = n_gram

    return tmp_fileid_map

def get_fileid_map(n_process, n_groups):
    fileid_map = {}
    global g_train_root
    ids = [f for f in listdir(g_train_root) if isfile(join(g_train_root, f))]
    pool = Pool(processes=n_process)
    groups = n_groups
    results = list(pool.imap(parallel_getOps, [zip(range(len(ids))[i::groups],ids[i::groups]) for i in range(groups)]))
    for i in results:
        fileid_map.update(i)
    return fileid_map

def preprocessing(threshold=500, output_name='n_gram.csv', n_process=4,n_groups=50):
    output_total_pkl = output_name + '_total' + '.pkl'
    try:
        print output_total_pkl
        f = open(output_total_pkl, 'rb')
        cc = pickle.load(f)
        f.close()
        print "use total pkl is:", output_total_pkl
        fileid_map = get_fileid_map(n_process, n_groups)

    except Exception as e:
        print e
        fileid_map = get_fileid_map(n_process, n_groups)
        # ids = [f for f in listdir(g_train_root) if isfile(join(g_train_root, f))]
        # pool = Pool(processes=n_process)
        # groups = n_groups
        # results = list(pool.imap(parallel_getOps, [zip(range(len(ids))[i::groups],ids[i::groups]) for i in range(groups)]))
        #
        # for i in results:
        #     fileid_map.update(i)

        counters = fileid_map.values()

        pool = Pool(processes=n_process)
        results = list(pool.imap(parallel_counter, [zip(range(len(counters))[i::n_groups],counters[i::n_groups]) for i in range(n_groups)]))
        cc = Counter([])
        for i in results:
            cc+= i
        write_pickle(output_total_pkl,cc)

    selectedfeatures = {}

    tc = 0
    for k,v in cc.iteritems():
        if v >= threshold:
            selectedfeatures[k] = v
            tc += 1

    print "total_feature", len(selectedfeatures)

    f = open(output_name, 'wb')
    w = csv.writer(f)
    #columns = selectedfeatures.keys()
    columns = []
    for feature in selectedfeatures:
        columns.append(feature)
    w.writerow(['ID'] + columns)
    for fid,op_gram in fileid_map.iteritems():
        standard = {}
        standard2 = []
        standard["ID"] = fid
        standard2.append(fid)
        for feature in selectedfeatures:
            if feature in op_gram:
                standard[feature] = op_gram[feature]
                standard2.append(str(op_gram[feature]))
            else:
                standard[feature] = 0
                standard2.append(str(0))
        w.writerow(standard2)
        #dataframelist.append(standard)
    f.close()
    #df = pd.DataFrame(dataframelist)
    #df.to_csv(output_name,index=False)


if __name__ == "__main__":
    # train_root = '../data/dataset/train'
    # test_root = '../data/dataset/test'
    """
    Usage:
        python op_code.py 2 500 ../data/asm/train 4
    """
    n_gram = int(sys.argv[1])
    threshold = int(sys.argv[2])
    train_root = sys.argv[3]
    n_process = int(sys.argv[4])

    global g_train_root
    global g_n_gram

    g_n_gram = n_gram
    g_train_root = train_root
    output_name = '{0}_gram.csv'.format(n_gram)
    preprocessing(threshold, output_name, n_process)
