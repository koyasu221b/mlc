from sklearn.ensemble import RandomForestClassifier
from sklearn.feature_selection import SelectFromModel
from sklearn.cross_validation import cross_val_score
import pandas as pd
import sys


def feature_selection(x, y):
    """use RandomForestClassifier to select important features"""
    rf = RandomForestClassifier(n_estimators=20, max_depth=20)
    rf.fit(x, y)
    scores = cross_val_score(rf, x, y, cv=5, scoring='roc_auc')

    model = SelectFromModel(rf, prefit=True)
    x_new = model.transform(x)

    rf2 = RandomForestClassifier(n_estimators=100)
    rf2 = rf2.fit(x_new, y)
    scores2 = cross_val_score(rf2, x_new, y, cv=5, scoring='roc_auc')
    scores2.mean()
    print "cross validation score:", scores.mean()


def read_training_data(train_csv):
    train = pd.read_csv(train_csv)
    print train.shape


def read_training_label():
    label = pd.read_csv('dataset/dataset/train.csv')
    print label.shape


if __name__ == "__main__":
    train_csv = sys.argv[1]
    read_training_data(train_csv)
