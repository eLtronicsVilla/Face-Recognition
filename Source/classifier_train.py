from __future__ import absolute_import
from __future__ import division
from __future__ import print_function

import sys

from packages.classifier import training

datadir = '../dataset/train/'
modeldir = '../Model'
classifier_filename = '../Model/class/classifier.pkl'
print (" brijesh Training Started")
obj=training(datadir,modeldir,classifier_filename)
get_file=obj.main_train()
print('Saved your classifier model to file "%s"' % get_file)
sys.exit("All work Done")
