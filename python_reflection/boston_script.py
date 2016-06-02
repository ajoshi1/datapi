#!/usr/bin/python

import sys
from sklearn import datasets
from sklearn import linear_model
import pickle
from sklearn.externals import joblib
import numpy as np

input = [float(num_string) for num_string in sys.argv[1:]]
regr = joblib.load('./bostonclf/bostonclf.pkl')
input = np.asarray(input).reshape(1, -1)
result = regr.predict(input)
print result[0]
