# Database Fundamentals Report

## Experiment Environment

- **SQL Version:** MySQL
- **Development Tools:** Visual Studio Code
- **Database System:** MySQL Database

## Experiment Process and Results

### 1.1 Stored Procedure: Query Customer Orders for a Specific Product

**Problem Overview:**
This procedure is designed to retrieve detailed customer order information for a specific product. It returns customer IDs, names, order IDs, quantities, and the total order amount, with results sorted by descending order amounts.

- **Execution Results:**
   - For the input product name "32M DRAM", the procedure effectively returns a sorted list of customers, along with their respective orders, in descending order of the order amount. This allows for quick analysis of which customers are purchasing the most expensive quantities of the given product.

### 1.2 Stored Procedure: Query Employees Hired Before a Given Employee

**Problem Overview:**
This stored procedure queries employees who were hired before a specified employee within the same department, providing their employee IDs, names, genders, hire dates, and departmental affiliation.

- **Execution Results:**
   - Running this procedure with the employee ID "E2008005" retrieves all employees in the same department who were hired before this individual, offering insights into departmental seniority and hire trends.

### 2.1 Stored Function: Calculate Average Order Price of a Product

**Problem Overview:**
The function calculates the average order price for a product by dividing the total price of orders by the total quantity ordered. This offers an overview of pricing trends for a particular product.

- **Execution Results:**
   - For the product "32M DRAM", the function calculates an average price that accounts for both quantity and total price of orders, providing valuable data for pricing strategy adjustments or marketing analyses.

### 2.2 Stored Function: Calculate Total Sales Quantity of a Product

**Problem Overview:**
This function computes the total sales quantity for a given product by summing up all order quantities where the product is listed. It also includes a filter to return only those products with sales quantities exceeding a threshold of 4.

- **Execution Results:**
   - The query efficiently returns products with total sales greater than 4 units, enabling the identification of best-sellers within the catalog, which can inform inventory management or promotional strategies.

### 3.1 Constraint: Limit Product Price

**Problem Overview:**
This trigger enforces a constraint that caps product prices at 1000. If an attempt is made to insert a product priced above this limit, the price is automatically adjusted to 1000.

- **Execution Results:**
   - When attempting to insert a product priced at 1500, the trigger correctly caps the price at 1000, ensuring adherence to pricing policies and preventing data integrity issues related to pricing inconsistencies.

### 3.2 Constraint: Adjust Employee Salary on Order Completion

**Problem Overview:**
The trigger updates employee salaries based on order completion. Employees hired before 1992 receive an 8% salary increase, while others receive a 5% increase. This rule ensures that salary adjustments are systematically applied based on hire dates and order processing activities.

- **Execution Results:**
   - After inserting new orders, employee salaries are updated according to the specified rules, demonstrating effective use of triggers to implement business logic directly within the database.

### 4.1 Query: Top 20 Highest Paid Employees

**Problem Overview:**
This query retrieves the top 20 highest-paid employees in descending order of their salaries, providing a quick way to evaluate compensation distribution within the organization.

- **Execution Results:**
   - The query successfully returns a list of the top earners, enabling analysis of salary hierarchies and helping HR teams ensure competitive compensation for key employees.

### 4.2 Query: Insert New Customer

**Problem Overview:**
The insertion query adds a new customer to the `Customer` table, capturing the customer's ID, name, address, and contact details.

- **Execution Results:**
   - A new customer, "Taikang Co., Ltd.", is successfully added to the database. This operation ensures that new customer data can be seamlessly integrated into the system, supporting customer relationship management (CRM) activities.

### 4.3 Deletion: Remove High-Salary Employees

**Problem Overview:**
This deletion query removes employees with salaries exceeding 5000 from the `Employee` table. Such an operation may be necessary for compliance, cost control, or restructuring initiatives.

- **Execution Results:**
   - Employees with salaries over 5000 are successfully deleted from the database. The query highlights the importance of data management for compliance purposes and demonstrates how deletion queries can help in the maintenance of operational guidelines.

### 5. Dynamic SQL: Adjust Salary and Query Customer Information

**Problem Overview:**
This dynamic SQL procedure performs two key operations: it increases the salary of all employees in the "Sales Department" by 200, and it queries customer details (names, addresses, and phone numbers) from the `Customer` table.

- **Execution Results:**
   - The salary adjustment is applied successfully to all sales department employees, and the customer data is retrieved without issues. This procedure showcases the power of dynamic SQL in automating complex updates and queries in a single execution.

## Database Structure

![Database Schema](scheme.png)

## Challenges Encountered and Solutions

### Challenges:

1. **Handling Complex Joins in Stored Procedures:**
   - When writing stored procedures that involved multiple joins across different tables (such as in the `find` procedure), ensuring the logic was both correct and efficient proved to be challenging.
   
2. **Enforcing Data Integrity via Constraints:**
   - Implementing constraints and triggers required careful consideration of the business logic. Ensuring that these were applied correctly without inadvertently breaking other parts of the system was critical.

3. **Optimizing Query Performance:**
   - Working with large datasets meant that query performance was sometimes a concern, especially with aggregate functions or sorting operations on large tables. Ensuring queries executed within a reasonable time frame was crucial.

### Solutions:

1. **Indexing Strategies:**
   - To address performance concerns, proper indexing was employed on frequently queried columns (such as `productNo` and `employeeNo`). This helped reduce query execution times, especially for complex join operations.

2. **Use of Triggers and Constraints:**
   - By embedding business logic within database triggers and constraints, we ensured automatic enforcement of rules like product price capping and employee salary adjustments. This reduced the need for external business logic and maintained data integrity within the database itself.

3. **Query Optimization:**
   - SQL query optimization techniques, such as using more efficient join types and aggregating data earlier in subqueries, helped reduce processing time for large datasets. Additionally, using `LIMIT` and `OFFSET` in SELECT queries helped minimize the amount of data retrieved, further optimizing performance.

## References and Acknowledgments

- **SQL Documentation:**
- **Database Systems Course Materials**
- **Stack Overflow discussions on SQL query optimization**
- **Consultation with peers and instructors**
