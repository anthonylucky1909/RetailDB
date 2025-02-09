# 🚀 **Database Fundamentals: A Deep Dive into SQL** 🛠️

## 🎯 **Experiment Environment**

- **SQL Version:** MySQL 🔧
- **Development Tools:** Visual Studio Code, MySQL Workbench 💻
- **Database System:** MySQL 8.0.23 🗃️
- **Operating System:** Ubuntu 20.04 LTS 🐧

---

## 🧑‍💻 **Experiment Process and Results**

### 🔍 **1.1 Stored Procedure: Query Customer Orders for a Specific Product**

**📝 Problem Overview:**
Imagine you’re in charge of analyzing customer purchasing behavior. This stored procedure helps you easily fetch customer orders for a specific product, displaying customer IDs, names, order IDs, quantities, and total order amounts – all sorted by the highest spender! 💸

- **✅ Execution Results:**
   - Searching for the product "32M DRAM"? 🎯 You get a neat list of customers, showing who’s spending the most! Perfect for identifying your top buyers and giving them exclusive offers. 🏅

---

### 🔍 **1.2 Stored Procedure: Query Employees Hired Before a Given Employee**

**📝 Problem Overview:**
Ever wondered who’s been around longer than a specific employee in the same department? This stored procedure pulls a list of employees hired *before* a given employee. A great tool for evaluating team experience and seniority! 📊

- **✅ Execution Results:**
   - Running this with employee ID "E2008005" gives you the full seniority picture! This can be a great asset for HR departments looking to optimize team structures. 🌟

---

### 🔢 **2.1 Stored Function: Calculate Average Order Price of a Product**

**📝 Problem Overview:**
Want to know how much people are really paying for a specific product on average? This function calculates the average price for a product, factoring in both order quantity and total price. 💰

- **✅ Execution Results:**
   - For "32M DRAM", you get a smooth calculation of its average price across orders. This is *gold* for adjusting pricing strategies and understanding market trends. 📈

---

### 🔢 **2.2 Stored Function: Calculate Total Sales Quantity of a Product**

**📝 Problem Overview:**
Looking for best-sellers? This function gives you the total quantity sold for any product, and it only returns products that exceed a certain threshold (4 units). 📦

- **✅ Execution Results:**
   - For "32M DRAM", it shows you which products are truly moving off the shelves. This data is *super* useful for inventory planning and marketing strategies. 🚚

---

### 🚨 **3.1 Constraint: Limit Product Price**

**📝 Problem Overview:**
Worried about products being overpriced? This trigger caps product prices at 1000. Any attempt to insert a price higher? Boom, it auto-adjusts to the limit. 🔒

- **✅ Execution Results:**
   - When trying to insert a product priced at 1500, the price automatically adjusts to 1000! 💡 Ensuring no product violates your pricing policies is a game changer for data integrity! 📊

---

### 🚨 **3.2 Constraint: Adjust Employee Salary on Order Completion**

**📝 Problem Overview:**
Reward your employees for their hard work! This trigger updates salaries based on the completion of orders: 8% for employees hired before 1992, and 5% for those hired later. 👩‍💼

- **✅ Execution Results:**
   - Employee salaries are updated automatically based on this trigger. 🌟 It makes sure that every hard-working employee gets the compensation they deserve without manual intervention! 💸

---

### 🔎 **4.1 Query: Top 20 Highest Paid Employees**

**📝 Problem Overview:**
Curious about who’s earning the big bucks? This query retrieves the top 20 highest-paid employees, making it easy to evaluate your organization’s compensation structure. 💼

- **✅ Execution Results:**
   - The list of top earners is pulled, helping you benchmark salaries, ensure fairness, and spot potential outliers. 🏆 Perfect for those wanting a snapshot of salary distribution in the company! 💼

---

### 🏷️ **4.2 Query: Insert New Customer**

**📝 Problem Overview:**
Adding new customers is key to CRM. This query inserts a new customer into the database with all the essential info – ID, name, address, and contact details. 📇

- **✅ Execution Results:**
   - Successfully adding "Taikang Co., Ltd." into the system! This ensures that new customer info flows seamlessly into your CRM system for future interactions. 📞💬

---

### 🧹 **4.3 Deletion: Remove High-Salary Employees**

**📝 Problem Overview:**
Sometimes, you need to clean up! This query deletes employees earning over 5000 from the database. It’s crucial for maintaining budgetary compliance and keeping track of employee compensation limits. 🔴

- **✅ Execution Results:**
   - Employees with salaries exceeding 5000 were removed. This cleanup ensures compliance with budget restrictions, helping your business stay financially healthy. 🏦

---

### 🏗️ **5. Dynamic SQL: Adjust Salary and Query Customer Information**

**📝 Problem Overview:**
Dynamic SQL lets you run multiple operations in one go. Here, it updates salaries for all employees in the "Sales Department" and fetches customer information in one smooth query. 🔄

- **✅ Execution Results:**
   - The procedure successfully adjusts salaries and retrieves the necessary customer data. It's a powerful tool for making complex changes with ease. 💼🔍

---

## 📊 **Database Structure**

![Database Schema](scheme.png)

---

## 🤔 **Challenges Encountered and Solutions**

### ⚠️ **Challenges:**

1. **Handling Complex Joins in Stored Procedures:**
   - Multi-table joins required careful optimization to maintain performance, especially when dealing with large datasets. 🌐

2. **Enforcing Data Integrity via Constraints and Triggers:**
   - Implementing complex business rules through triggers and constraints while ensuring system stability was tricky. ⚖️

3. **Optimizing Query Performance on Large Datasets:**
   - Large-scale queries were becoming slower, and optimizing them required extra attention to indexing and query design. 🚀

### ✅ **Solutions:**

1. **Indexing Strategies:**
   - Indexed frequently queried columns to speed up operations and optimize joins. This improved query performance significantly! 📈

2. **Use of Triggers and Constraints:**
   - Business logic was embedded in the database, ensuring seamless enforcement of rules like salary adjustments and price limits. 🛡️

3. **Query Optimization:**
   - Applied advanced query techniques such as using efficient join types and limiting returned data to make the database faster and more efficient. 🔄

---

## 📚 **References and Acknowledgments**

- **SQL Documentation**: [MySQL Reference Manual](https://dev.mysql.com/doc/)
- **Database Systems Course Materials**: MIT OpenCourseWare 📖
- **Stack Overflow**: Community solutions on query optimization 💬
- **Peer Consultation**: Insights and feedback from amazing professors and colleagues! 🤝

---

🚀 **Thanks for diving into my Database Fundamentals Project!** I hope this gives you an exciting glimpse into how databases can automate and optimize processes, saving both time and money! 🎉🔧
