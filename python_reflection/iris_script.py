#!/usr/bin/python

import sys
from sklearn import datasets
from sklearn import svm
import pickle
from sklearn.externals import joblib
import numpy as np

input = [float(num_string) for num_string in sys.argv[1:]]
clf = joblib.load('./irisclf/irisclf.pkl')
input = np.asarray(input).reshape(1, -1)
result = clf.predict(input)
print result[0]
