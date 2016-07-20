from os import listdir
import csv
import sys as Sys
import pickle

def write_pickle(filename, output):
    f = open(filename, 'wb')
    pickle.dump(output, f)

def list_dirs(path):
    return [f for f in listdir(path)]

def write_csv(output_name, module_map, module_header):
    with open(output_name, 'wb') as f:
        header = ["ID"] + module_header
        w = csv.writer(f)
        w.writerow(header)
        module_header_length = len(module_header)
        for fileid, v in module_map.iteritems():
            tmp = [0] * module_header_length
            for index, count in v.iteritems():
                tmp[index] = count
            output_row = [fileid] + tmp
            w.writerow(output_row)


# Print iterations progress
def printProgress (iteration, total, prefix = '', suffix = '', decimals = 2, barLength = 100):
    """
    Call in a loop to create terminal progress bar
    @params:
        iteration   - Required  : current iteration (Int)
        total       - Required  : total iterations (Int)
        prefix      - Optional  : prefix string (Str)
        suffix      - Optional  : suffix string (Str)
        decimals    - Optional  : number of decimals in percent complete (Int)
        barLength   - Optional  : character length of bar (Int)
    """
    filledLength    = int(round(barLength * iteration / float(total)))
    percents        = round(100.00 * (iteration / float(total)), decimals)
    bar             = '#' * filledLength + '-' * (barLength - filledLength)
    Sys.stdout.write('%s [%s] %s%s %s\r' % (prefix, bar, percents, '%', suffix)),
    Sys.stdout.flush()
    if iteration == total:
        print("\n")
