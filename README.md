# Database Fundamentals Report

## Experiment Environment

- SQL
- Visual Studio Code

## Experiment Process

### 1.1 Stored Procedure: Query Customer Orders for a Specific Product

**Problem Description:**
The stored procedure retrieves customer ID, customer name, order ID, order quantity, and order amount for a given product name, sorted in descending order of order amount.

**Example Query for "32M DRAM" Orders:**

```sql
CALL GetCustomerOrders('32M DRAM');
```

**Execution Results:**
(To be filled with SQL execution results)

---

### 1.2 Stored Procedure: Query Employees Hired Before a Given Employee

**Problem Description:**
The stored procedure retrieves employee ID, name, gender, hire date, and department for employees hired before the given employee ID in the same department.

**Example Query for Employee "E2008005":**

```sql
CALL GetEarlierEmployees('E2008005');
```

**Execution Results:**
(To be filled with SQL execution results)

---

### 2.1 Stored Function: Calculate Average Order Price of a Product

**Problem Description:**
The stored function returns the average order price for a given product name.

**Example Query for All Products:**

```sql
SELECT productName, GetAveragePrice(productName) FROM Product;
```

**Execution Results:**
(To be filled with SQL execution results)

---

### 2.2 Stored Function: Calculate Total Sales Quantity of a Product

**Problem Description:**
The stored function calculates the total sales quantity for a given product ID.

**Example Query for Products with Sales Greater Than 4:**

```sql
SELECT productNo, productName, GetTotalSales(productNo)
FROM Product HAVING GetTotalSales(productNo) > 4;
```

**Execution Results:**
(To be filled with SQL execution results)

---

### 3.1 Constraint: Limit Product Price

**Problem Description:**
When inserting a product, if the price exceeds 1000, it should be set to 1000.

**Validation Command:**

```sql
INSERT INTO Product (productNo, productName, productPrice) VALUES ('P1005', 'High-End Laptop', 1500);
SELECT * FROM Product WHERE productNo = 'P1005';
```

**Validation Results:**
(To be filled with SQL execution results)

---

### 3.2 Constraint: Adjust Employee Salary on Order Completion

**Problem Description:**
When an employee completes a new order, their salary increases by 5%; if hired before 1992, they receive an additional 3% increase (total 8%).

**Execution Results:**
(To be filled with SQL execution results)

---

### 4.1 Query: Top 20 Highest Paid Employees

**SQL Query:**

```sql
SELECT employeeName, salary 
FROM Employee 
ORDER BY salary DESC 
LIMIT 20;
```

**Execution Results:**
(To be filled with SQL execution results)

---

### 4.2 Query: Insert New Customer

**SQL Query:**

```sql
INSERT INTO Customer VALUES('C20080002', 'Taikang Co., Ltd.', '010-5422685', 'Tianjin', '220501');
```

**Execution Results:**
(To be filled with SQL execution results)

---

### 4.3 Deletion: Remove High-Salary Employees

**SQL Query:**

```sql
DELETE FROM Employee WHERE salary > 5000;
```

**Execution Results:**
(To be filled with SQL execution results)

---

### 5. Dynamic SQL: Adjust Salary and Query Customer Information

**Task:**

1. Increase the salary of all employees in the "Sales Department" by 200.
2. Retrieve customer names, addresses, and phone numbers from the customer table.

**Example SQL Query:**

```sql
UPDATE Employee SET salary = salary + 200 WHERE department = 'Sales Department';
SELECT customerName, customerAddress, customerPhone FROM Customer;
```

**Execution Results:**
(To be filled with SQL execution results)

---

## Database Structure

The database schema is provided in `scheme.png`.

---

## Challenges Encountered and Solutions

**Challenges:**
1. Handling complex joins in stored procedures.
2. Ensuring data integrity while enforcing constraints.
3. Performance optimization for large dataset queries.

**Solutions:**
1. Used indexing strategies to improve query performance.
2. Implemented triggers and constraints to maintain data integrity.
3. Optimized stored procedures with efficient query design.

---

## References and Acknowledgments

- SQL Documentation
- Database Systems Course Materials
- Stack Overflow discussions on SQL query optimization
- Consultation with peers and instructors

