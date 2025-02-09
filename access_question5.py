# Importing module
import mysql.connector

# Creating connection object
mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="password",
    database="OrderDB"
)
cursor = mydb.cursor()
print("problem 5.1:")
mysql = "update Employee set salary = salary+200 where department = %s"
cursor.execute(
    "SELECT A.employeeNo,A.employeeName,A.salary,A.department FROM Employee A")

for i in cursor:
    print(i)

cursor.execute(mysql, ['业务科'])
print("Change to be like:")

cursor.execute(
    "SELECT A.employeeNo,A.employeeName,A.salary,A.department FROM Employee A")
for i in cursor:
    print(i)

print("problem 5.2:")
mysql = "SELECT  A.customerName,A.address,A.telephone FROM Customer A"
cursor.execute(mysql)
for i in cursor:
    print(i)
