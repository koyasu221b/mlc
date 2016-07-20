from sklearn.ensemble import RandomForestClassifier
from sklearn.feature_selection import SelectFromModel
from sklearn.cross_validation import cross_val_score
import pandas as pd
import sys
import numpy as np
import json


def feature_selection(x, y):
    """use RandomForestClassifier to select important features"""
    rf = RandomForestClassifier(n_estimators=20, max_depth=20, n_jobs=-1)
    rf.fit(x, y)
    scores = cross_val_score(rf, x, y, cv=5, scoring='roc_auc')

    model = SelectFromModel(rf, prefit=True)
    x_new = model.transform(x)

    num_remain_features = x_new.shape[1]
    print "remaining %s features" % num_remain_features

    rf2 = RandomForestClassifier(n_estimators=100, n_jobs=-1)
    rf2 = rf2.fit(x_new, y)
    scores2 = cross_val_score(rf2, x_new, y, cv=5, scoring='roc_auc', n_jobs=-1)
    scores2.mean()
    print "cross validation score:", scores.mean()

    importances = rf2.feature_importances_
    print importances

    importances_indices = np.argsort(importances)[::-1] #reverse in descending order
    print importances_indices

    return importances_indices[:num_remain_features].tolist()


def read_training_data(train_csv):
    train = pd.read_csv(train_csv)
    print "training data shape:", train.shape
    train.set_index('ID', inplace=True)
    train.sort_index(0, inplace=True)
    train.reset_index(inplace=True)
    return train

def read_testing_data(test_csv):
    test = pd.read_csv(test_csv)
    print "testing data shape:", test.shape
    test.set_index('ID', inplace=True)
    test.sort_index(0, inplace=True)
    test.reset_index(inplace=True)
    return test


def read_training_label():
    label = pd.read_csv('dataset/dataset/train.csv')
    print "label shape:", label.shape
    label.set_index('ID', inplace=True)
    label.sort_index(0, inplace=True)
    label.reset_index(inplace=True)
    return label

def dump_importances_features(train_csv):
    train = read_training_data(train_csv)
    label = read_training_label()
    label = np.squeeze(label.values[:, 1:].astype(int))
    importances_indices = feature_selection(
        train.values[:, 1:],
        label)

    column_indexes = [x+1 for x in importances_indices]
    feature_names = train.columns.values[sorted(column_indexes)].tolist()
    out_name = train_csv + '.importances.json'
    print "dump importances features"
    with open(out_name, 'w') as f:
        json.dump(feature_names, f)

    return feature_names

def load_feature_names(feature_file):
    print "use feature file", feature_file
    with open(feature_file) as f:
        feature_names = json.load(f)

    return feature_names

def export_csv(input_csv, feature_names):
    feature_names.insert(0, 'ID')
    data = pd.read_csv(
        input_csv,
        usecols=feature_names
    )
    out_csv = input_csv + '.extract.csv'
    data.to_csv(
        out_csv, sep=',', index=False, encoding='utf-8')

if __name__ == "__main__":
    flag = int(sys.argv[1])
    if flag == 0:
        train_csv = sys.argv[1]
        feature_names = dump_importances_features(train_csv)
        export_csv(train_csv, feature_names)
    else:
        feature_file = sys.argv[2]
        test_csv = sys.argv[3]

        feature_names = load_feature_names(feature_file)
        export_csv(test_csv, feature_names)
