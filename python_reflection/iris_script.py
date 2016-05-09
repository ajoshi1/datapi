#!/usr/bin/python

import sys
from sklearn import datasets
from sklearn import svm
import pickle
from sklearn.externals import joblib

input = [float(num_string) for num_string in sys.argv[1:]]
clf = joblib.load('./irisclf/irisclf.pkl')
result = clf.predict(input)
print result 

