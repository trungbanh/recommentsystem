import pandas as pd
import numpy as np
from sklearn.neighbors import KNeighborsClassifier


class model(object):
    def __init__(self):
        self.mydata = pd.read_csv('studio.csv', encoding='latin1')
        self.mydata = self.mydata.fillna(0)

    def __getDataByHuyen(self, huyen):
        return self.mydata[self.mydata.huyen.isin([huyen])]

    def getLabel(self):
        ''' 
        get turn all 'Ten' in studio.csv
        '''
        return self.mydata[['ten']].values

    def getmode(self, huyen, theloai):
        '''
        huyen is number 
        theloai is a list of name 
        danh gia is number 
        can call this function with  >>> getmode(1,['baby','ky yeu'],danhgia=5)
        '''
        data = self.__getDataByHuyen(huyen)
        data_feature = data[['huyen', *theloai, 'danh gia']]  # X data train
        target = data[['STT']]  # Y data label
        model = KNeighborsClassifier(
            weights='distance', n_neighbors=5)  # eulic
        model.fit(data_feature, target)
        return model, target.values
