import mysql.connector
import pandas as pd

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
print(df)
