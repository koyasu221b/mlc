# -*- coding: utf-8 -*-
import codecs
import chardet
import csv
import sys
from utils import list_dirs
from utils import write_csv
from utils import write_pickle
from utils import printProgress
import json

module_map = {}
module_api_map = {}
empty_fileids = []
APIS_PATH = 'data/APIs.txt'
output = []

def get_all_aps(filename):
    with open(filename) as f:
        content = f.readlines()
    return content[0].split(',')

asm_apis = get_all_aps(APIS_PATH)

def json_dump(input_obj):
    output = 'empty_fileids.json'
    with open(output, 'wb') as fp:
        json.dump(input_obj ,fp)

def detect_file_encoding(file_path):
    with open(file_path, 'r') as f:
        predict = chardet.detect(f.read())
    return predict['encoding']


def preprocessing_module(root):
    j = 0
    ids = list_dirs(root)
    total_j = len(ids)
    print total_j, "\n"

    def processing(f, fileid):
        data = f.read().encode('utf8')
        data = [s.strip() for s in data.splitlines()]
        current_modules = []
        current_module_api = []
        apis_values = [0]*len(asm_apis)

        if len(data) == 0:
            return [fileid, -999, -999, -999, -999, -999] + len(asm_apis) * [-999]

        count_of_module = 0
        count_of_apis = 0
        count_of_distinct_module = {}
        count_of_distinct_apis = {}
        count_of_asm_apis = 0
        for line in data:
            module_and_api = line.split('\t')
            if len(module_and_api) == 2:
                module = module_and_api[0]
                api_name = module_and_api[1]
                count_of_module+=1
                count_of_apis+=1
                if module not in count_of_distinct_module:
                    count_of_distinct_module[module] = 1
                if api_name not in count_of_distinct_apis:
                    count_of_distinct_apis[api_name] = 1

                if module in asm_apis:
                    count_of_asm_apis+=1
                    for i in range(len(asm_apis)):
                        if asm_apis[i] == module:
                            apis_values[i] += 1 #parts.count(opcode)

                if api_name in asm_apis:
                    count_of_asm_apis+=1
                    for i in range(len(asm_apis)):
                        if asm_apis[i] == api_name:
                            apis_values[i] += 1 #parts.count(opcode)

            else:
                module = module_and_api[0]
                count_of_module+=1
                if module not in count_of_distinct_module:
                    count_of_distinct_module[module] = 1

                if module in asm_apis:
                    count_of_asm_apis+=1
                    for i in range(len(asm_apis)):
                        if asm_apis[i] == module:
                            apis_values[i] += 1 #parts.count(opcode)

        count_of_distinct_module = len(count_of_distinct_module)
        count_of_distinct_apis= len(count_of_distinct_apis)
        return [fileid, count_of_module, count_of_apis, count_of_distinct_module, count_of_distinct_apis, count_of_asm_apis] + apis_values

    output.append(
        ['ID', 'count_of_module', 'count_of_apis', 'count_of_distinct_module', 'count_of_distinct_apis', 'asm_apis_count']
        + asm_apis
    )
    for i in ids:
        import_path = root + '/' + i + '/import'
        printProgress(j, total_j, prefix = 'Progress:', suffix = 'Complete', barLength = 50)
        try:
            encoding = detect_file_encoding(import_path)
            try:
                with codecs.open(import_path, 'r', encoding, errors="ignore") as f:
                    result = processing(f, i)
                    output.append(result)
            except:
                encoding = 'iso-8859-1'
                with codecs.open(import_path, 'r', encoding, errors="ignore") as f:
                    result = processing(f, i)
                    output.append(result)
            j+=1
        except Exception as e:
            print i,e

if __name__ == "__main__":
    # train_root = '../data/dataset/train'
    # test_root = '../data/dataset/test'
    """
    Usage:
        python import_table.py ../dataset/dataset/train
    """
    train_root = sys.argv[1]
    preprocessing_module(train_root)
    with open('import_table.csv', 'wb') as f:
        w = csv.writer(f)
        for i in output:
            w.writerow(i)
