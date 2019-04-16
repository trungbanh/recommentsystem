from flask import Flask
import json
from flask import request
import numpy as np

from model import model


app = Flask(__name__)
app.testing = True


@app.route('/', methods=['GET'])
def index():
    return json.dumps({'test': 'server is already'})


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
