import re
import csv
import sys
from collections import *
from os import listdir
from os.path import isfile, join
from utils import printProgress
from multiprocessing import Pool
g_train_root = ''
keywords = ['Virtual','Offset','loc',
            'Import','Imports','var',
            'Forwarder','UINT','LONG',
            'BOOL','WORD','BYTES','large',
            'short','dd','db','dw',
            'XREF','ptr','DATA','FUNCTION',
            'extrn','byte','word','dword',
            'char','DWORD','stdcall','arg',
            'locret','asc','align','WinMain',
            'unk','cookie','off','nullsub',
            'DllEntryPoint','System32','dll','CHUNK',
            'BASS','HMENU','DLL','LPWSTR',
            'void','HRESULT','HDC','LRESULT',
            'HANDLE','HWND','LPSTR','int',
            'HLOCAL','FARPROC','ATOM','HMODULE',
            'WPARAM','HGLOBAL','entry','rva',
            'COLLAPSED','config','exe','Software',
            'CurrentVersion','__imp_','INT_PTR','UINT_PTR',
            '---Seperator','PCCTL_CONTEXT','__IMPORT_',
            'INTERNET_STATUS_CALLBACK','.rdata:','.data:','.text:',
            'case','installdir','market','microsoft',
            'policies','proc','scrollwindow','search',
            'trap','visualc','___security_cookie','assume',
            'callvirtualalloc','exportedentry','hardware',
            'hkey_current_user','hkey_local_machine',
            'sp-analysisfailed','unableto']

def asm_misc(filename):
    keywords_values = [0]*len(keywords)
    with open(filename) as f:
        for row in f:
            for i in range(len(keywords)):
                if keywords[i] in row:
                    keywords_values[i] += 1 #parts.count(opcode)
                    break
    return keywords_values

def parallel_getMisc(ids):
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
        keywords_values = asm_misc(file_path)
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
        parallel_getMisc, [zip(range(len(ids))[i::groups],ids[i::groups]) for i in range(groups)]))
    total_output = []
    for i in results:
        total_output+=i

    f = open('asm_misc.csv', 'wb')
    w = csv.writer(f)
    w.writerow(['ID'] + keywords)
    for i in total_output:
        w.writerow(i)
    f.close()

if __name__ == "__main__":
    # train_root = '../data/dataset/train'
    # test_root = '../data/dataset/test'
    """
    Usage:
        python asm_misc.py ../dataset/asm/train 4
    """
    train_root = sys.argv[1]
    process = int(sys.argv[2])

    global g_train_root
    global g_n_gram

    g_train_root = train_root
    preprocessing(process)
