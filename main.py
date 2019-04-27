from flask import Flask
import json
from flask import request
import numpy as np
import mysql.connector
import pandas as pd

from model import model


app = Flask(__name__)
app.testing = True


@app.route('/', methods=['GET'])
def index():
    return json.dumps({'test': 'server is already'})


@app.route('/updatemodel', methods=['GET', 'POST'])
def updatemodel():
    if request.method == 'POST':
        data = json.loads(request.data)

        if (data['admin'] == 'secret'):

            mydb = mysql.connector.connect(
                host="localhost",
                user="root",
                passwd="password",
                database="mydb"
            )

            mycursor = mydb.cursor()

            mycursor.execute(
                "SELECT id, khuvuc_id, rating FROM users ")

            # "SELECT id, khuvuc_id, anhcuoi, phongsucuoi, ngoaicanh, baby, kyyeu, totnghiep, sukien, sinhnhat, thoitrang, sanpham, rating FROM users join chitietstudio on users.id= chitietstudio.idUser"
            myresult = mycursor.fetchall()

            df = pd.DataFrame(myresult, columns=['id', 'khuvuc_id', 'rating'])

            df.to_csv('mydata.csv')

            return json.dumps({'result': 'data is update'})
        else:
            return json.dumps({'error': 'you not admin'})

    return '<h1> this is a post function </h1>'


@app.route('/model', methods=['GET', 'POST'])
def modelFunc():
    '''
        {
            "huyen":1,
            "theloai":["ky yeu"],
            "giaca":[4]
        }
    '''
    modelObj = model()
    if request.method == 'POST':
        data = json.loads(request.data)
        # print(data['huyen'])
        mymodel, stt = modelObj.getmode(
            huyen=data['huyen'], theloai=data['theloai'])
        predict = mymodel.predict_proba(
            [[data['huyen'], *data['giaca'], 4.5]])[0]
        stt = np.reshape(stt, (1, -1))[0]
        name = np.reshape(modelObj.getLabel(), (1, -1))[0]

        nameObj = list()
        for i in stt:
            nameObj.append(name[i])
        result = dict(zip(nameObj, predict))

        import operator

        sorted_x = sorted(result.items(), key=operator.itemgetter(1))

    return json.dumps(sorted_x[:])


app.run(host='0.0.0.0', port=9999, debug=True)
