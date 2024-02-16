import mysql.connector
con=mysql.connector.connect(

    host="192.168.1.240",
    user="AIBATCH01",
    password="AI@123",
    database="a"
)
print(con)
result=con.cursor()
result.execute("show tables")
resultshow=result.fetchall()                            
for x in resultshow:
    print(x)

result.execute("select * from sys_info ")
resultshow=result.fetchall()
for value in resultshow:
    print(value)
result.execute("delete from sys_info where sno=4")
resultshow=result.fetchall()
for y in resultshow:
    print(y)
