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
print("Problem 4.1:")
cursor.execute("SELECT A.employeeNo,A.employeeName,A.salary From (Select * FROM Employee Order BY salary DESC) A GROUP BY A.employeeNo,A.employeeName,A.salary having count(A.employeeName)  <=20 ORDER BY A.salary DESC;")
for x in cursor:
    print(x)
# insert new dataset to database
print("\nProblem 4.2:")
cursor.execute(
    "INSERT Customer VALUES('C20080002','泰康股份有限公司',  '010-5422685',  '天津市', '220501');")
# check dataset
cursor.execute("Select * FROM Customer WHERE customerNo ='C20080002';")
for x in cursor:
    print(x)

print("\nProblem 4.3:")
cursor.execute("Select salary FROM Employee Order BY salary ASC;")
for x in cursor:
    print(x)

print("\nchange to be:\n")
cursor.execute("DELETE FROM Employee WHERE Employee.salary > 5000;")
cursor.execute("Select salary FROM Employee Order BY salary ASC;")
for x in cursor:
    print(x)


print("\nProblem 4.4:")
cursor.execute(
    "SELECT productNo,productName,productPrice FROM Product WHERE productPrice >1000 ORDER BY productPrice ASC;")
for x in cursor:
    print(x)

print("\nchange to be:\n")
cursor.execute(
    "UPDATE Product SET productPrice = productPrice * (50/100) WHERE productPrice > 1000;")
cursor.execute(
    "SELECT productNo,productName,productPrice FROM Product WHERE productPrice >1000 ORDER BY productPrice ASC;")
for x in cursor:
    print(x)
