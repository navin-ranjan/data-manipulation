

## ✅ UPDATED SQL & MySQL COMPLETE QUESTION BANK (\~200 Questions)

---

### **1. Introduction to Databases**

1. What is a database?
2. What are the types of databases?
3. What is a relational database?
4. What is SQL?
5. What are some popular relational database systems?
6. What is a table in a database?
7. What is a primary key?
8. What is a foreign key?
9. What is a schema?
10. What is a record (row) and a field (column)?
11. What is the difference between OLTP and OLAP?
12. What is a database instance?
13. What is data redundancy?

---

### **2. SQL Basics**

1. What is SQL used for?
2. What are DDL, DML, DCL, and TCL?
3. What is the syntax for creating a table?
4. How do you insert data into a table?
5. How do you update data in a table?
6. How do you delete data from a table?
7. How do you select data from a table?
8. What is the WHERE clause used for?
9. How do you sort query results?
10. How do you limit the number of rows returned?
11. What is the difference between DELETE, TRUNCATE, and DROP?
12. What is the default sorting order in SQL?
13. What is NULL in SQL?

---

### **3. Filtering, Sorting, and Functions**

1. How do you filter data using WHERE?
2. What are comparison and logical operators in SQL?
3. How do you use BETWEEN, IN, and LIKE?
4. How do you sort results using ORDER BY?
5. What are aggregate functions (SUM, AVG, COUNT, MIN, MAX)?
6. How do you group data using GROUP BY?
7. How do you filter groups using HAVING?
8. What are scalar functions?
9. How do you use string and date functions in SQL?
10. What is the difference between HAVING and WHERE?
11. How do you use CASE/IF statements in SQL?
12. How do you use COALESCE() and NULLIF()?
13. What is the difference between COUNT(\*) and COUNT(column\_name)?

---

### **4. Joins and Relationships**

1. What is a join in SQL?
2. What are the types of joins?
3. What is an INNER JOIN?
4. What is a LEFT (OUTER) JOIN?
5. What is a RIGHT (OUTER) JOIN?
6. What is a FULL (OUTER) JOIN?
7. What is a CROSS JOIN?
8. How do you join more than two tables?
9. What is a self join?
10. What is a subquery?
11. What is a correlated subquery?
12. What is a NATURAL JOIN?
13. When should you use EXISTS vs IN?
14. What is the performance difference between JOINs and subqueries?

---

### **5. Constraints and Data Integrity**

1. What are constraints in SQL?
2. What is a NOT NULL constraint?
3. What is a UNIQUE constraint?
4. What is a CHECK constraint?
5. What is a DEFAULT constraint?
6. What is a PRIMARY KEY constraint?
7. What is a FOREIGN KEY constraint?
8. How do you add or drop constraints?
9. What is referential integrity?
10. How do you define composite keys?
11. What’s the difference between UNIQUE and PRIMARY KEY?
12. What happens when foreign key constraints are violated?

---

### **6. Normalization and Database Design**

1. What is normalization?
2. What are the normal forms (1NF, 2NF, 3NF, BCNF)?
3. Why is normalization important?
4. What is denormalization?
5. What is an ER diagram?
6. What is a relationship (one-to-one, one-to-many, many-to-many)?
7. What is a composite key?
8. What is an index?
9. What are the advantages and disadvantages of indexes?
10. What is surrogate key vs natural key?
11. How do you identify functional dependencies?
12. What is star schema and snowflake schema?

---

### **7. Transactions and Concurrency**

1. What is a transaction in SQL?
2. What are the ACID properties?
3. How do you start, commit, and rollback a transaction?
4. What is concurrency control?
5. What are locks in databases?
6. What is isolation level?
7. What are deadlocks and how can they be prevented?
8. What is optimistic vs pessimistic locking?
9. What are the types of isolation levels in MySQL?
10. What is phantom read, dirty read, and non-repeatable read?

---

### **8. Views, Stored Procedures, and Triggers**

1. What is a view in SQL?
2. How do you create and use a view?
3. What is a stored procedure?
4. How do you create and execute a stored procedure?
5. What are the advantages of stored procedures?
6. What is a trigger in SQL?
7. How do you create and use triggers?
8. What is a function in SQL?
9. What is the difference between a function and a stored procedure?
10. Can we modify data using views?
11. How do you handle exceptions in stored procedures?

---

### **9. Advanced SQL**

1. What is a CTE (Common Table Expression)?
2. How do you use recursive queries?
3. What are window functions?
4. How do you use RANK(), ROW\_NUMBER(), and DENSE\_RANK()?
5. How do you perform pivot and unpivot operations?
6. How do you handle NULL values in SQL?
7. What is dynamic SQL?
8. How do you optimize SQL queries?
9. What are execution plans?
10. What are materialized views?
11. What is query profiling?
12. What is a lateral join?

---

### **10. Security and User Management**

1. How do you create and manage users in a database?
2. What are roles and privileges?
3. How do you grant and revoke permissions?
4. What is SQL injection and how can it be prevented?
5. How do you audit database activity?
6. What are best practices for database security?
7. How do you implement row-level security?

---

### **11. Backup, Restore, and Maintenance**

1. How do you backup a database?
2. How do you restore a database?
3. What is database replication?
4. What is sharding?
5. How do you monitor database performance?
6. What are common database maintenance tasks?
7. What is binary logging in MySQL?
8. What are slow query logs?

---

### **12. NoSQL and Modern Databases (Optional)**

1. What is NoSQL?
2. What are the types of NoSQL databases?
3. What is the difference between SQL and NoSQL?
4. What are some popular NoSQL databases?
5. When should you use NoSQL over SQL?
6. What are the limitations of NoSQL databases?
7. How does MongoDB handle schema flexibility?

---


-----------------------------------------------------------------------------------------------------

## 50+ practical questions**

## ✅ Sample Schema

### 🔹 Table: `customers`

```sql
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    city VARCHAR(50),
    gender CHAR(1)
);

INSERT INTO customers VALUES
(1, 'Alice',   'alice@example.com', '1990-05-21', 'Delhi',  'F'),
(2, 'Bob',     'bob@abc.com',       '1985-08-10', 'Mumbai', 'M'),
(3, 'Charlie', NULL,                '1975-12-01', 'Pune',   'M'),
(4, 'Diana',   'diana@mail.com',    '1998-03-15', 'Delhi',  'F');
```

### 🔹 Table: `orders`

```sql
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    amount FLOAT,
    city VARCHAR(50)
);

INSERT INTO orders VALUES
(101, 1, '2023-03-01', 250.00, 'Delhi'),
(102, 1, '2023-03-15', 550.50, 'Delhi'),
(103, 2, '2023-04-10', 400.00, 'Mumbai'),
(104, 4, '2023-03-12', 100.00, 'Delhi'),
(105, NULL, '2023-02-05', 700.00, 'Pune');
```

---

## ✅ 50+ Real-World SQL Questions

---

### 🔹 1. **Joins & Filtering**

1. Get `order_id`, customer `name`, and `amount` by joining `orders` and `customers`.
2. Find customers who have **never placed an order**.
3. Show orders where `amount > 300` and customer city is `Delhi`.
4. Perform a **LEFT JOIN** to show all customers and their orders.
5. Fetch all orders placed in **March 2023** with customer names.
6. Find orders with **no matching customer** (anti join).
7. Display all customers, even if they never ordered anything.

---

### 🔹 2. **Aggregations & Group By**

8. Get **total amount** spent by each customer.
9. Get **average order amount** per city.
10. Count total number of **orders per city**.
11. Show max and min order amount per customer.
12. List customers who spent **more than 1000** in total.
13. Count total orders placed by each customer.
14. Show customers who placed **more than 1 order**.
15. Calculate total, average, and order count **grouped by city**.

---

### 🔹 3. **String Functions**

16. Extract domain from each customer's email address.
17. Filter customers whose email ends with `example.com`.
18. Convert all customer names to **UPPERCASE**.
19. Replace `@` with `-at-` in email.
20. Find customers whose name **starts with ‘A’**.

---

### 🔹 4. **Date Functions**

21. Extract **year**, **month**, and **day** from `order_date`.
22. Calculate age of each customer.
23. Find customers **born before 1990**.
24. Count orders placed in **February**.
25. Show how many **days ago** each order was placed.

---

### 🔹 5. **Window Functions**

26. Rank orders by `amount` **within each customer**.
27. Find **top 2 orders per customer** by amount.
28. Calculate **running total** of amount per customer.
29. Get **cumulative average** of order amount per customer.
30. Flag the **first order** of every customer.

---

### 🔹 6. **NULL Handling**

31. Replace NULL emails with `'unknown@example.com'`.
32. Find all customers with NULL email.
33. In orders, replace NULL `customer_id` with `-1`.
34. Handle NULLs while joining orders and customers.

---

### 🔹 7. **Data Types & Derived Columns**

35. Convert `amount` to **INT** and show.
36. Round `amount` to **1 and 2 decimal places**.
37. Add a new column `GST = amount * 0.18`.
38. Add a new column `order_month = DATE_FORMAT(order_date, '%Y-%m')`.
39. Add a new column:
      `CASE WHEN amount > 500 THEN 'High'  
      WHEN amount BETWEEN 200 AND 500 THEN 'Medium' ELSE 'Low' END`

---

### 🔹 8. **CASE WHEN / Conditional Logic**

40. Create a column `age_group`:
      - `Senior` if age > 40
      - `Adult` if age between 25 and 40
      - `Young` otherwise
41. Tag each order as 'Repeat' or 'First Time' for the customer.
42. Use CASE to flag if email is missing or valid.

---

### 🔹 9. **Advanced Analysis / Real Use Cases**

43. Build a summary:
      `customer_id, name, total_orders, total_amount, avg_amount`
44. Get customers who ordered from **more than 1 city**.
45. Identify **top-spending customer** in each city.
46. Show customers who spent **more than average** in their city.
47. For each customer:
      - first\_order\_date, last\_order\_date, total\_orders, total\_amount
48. Rank **cities** based on total order revenue.

---

### 🔹 10. **Data Quality / Cleansing**

49. Remove duplicate rows from orders (if any).
50. Detect duplicate emails in customers.
51. Standardize city names (e.g., lowercase or title case).
52. Exclude rows with NULL `dob` or `gender`.

