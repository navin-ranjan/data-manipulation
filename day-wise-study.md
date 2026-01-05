
---
## ✅ **DAY 1 – SCOPE**

## **1. Data Engineering – Overview**

### **What is Data Engineering?**

* Data Engineering is about **collecting, cleaning, and storing data**.
* It prepares data so it can be **used for analysis and reports**.
* Focus is on **data pipelines**, not dashboards.


>Data Engineering is the process of collecting, cleaning, transforming, and storing data so that it can be used for analysis, reporting, and decision-making.

---

### **Role of a Data Engineer**

* Collect data from different sources (apps, files, databases).
* Clean and transform raw data into usable format.
* Store data in **Data Lake / Data Warehouse**.
* Make data ready for **Analysts, Data Scientists, BI tools**.


>A Data Engineer designs and maintains data pipelines.
My role is to bring data from multiple sources, process it, store it in data lakes or data warehouses, and make it ready for analysts and data scientists.

---

### **High-Level Data Pipeline**

**Source → Process → Storage → Analytics**

1. **Source**

   * Databases, APIs, logs, files, sensors, applications

2. **Process**

   * Cleaning, filtering, transforming data
   * Tools: Python, Spark, SQL

3. **Storage**

   * Data Lake (raw data)
   * Data Warehouse (structured data)

4. **Analytics**

   * Reports, dashboards, insights
   * Tools: Power BI, Tableau, SQL queries

>A data pipeline has four main stages: Source, Process, Storage, and Analytics.
Data comes from sources like databases or APIs, then it is processed using tools like Python or Spark, stored in a data lake or data warehouse, and finally used for analytics and reporting.

---

### **Why is Data Engineering important?**

Data Engineering is important because analytics and machine learning depend on clean and reliable data. Without proper data pipelines, insights will not be accurate.

---

## **2. SQL Basics**

### **What is SQL?**

SQL (Structured Query Language) is used to **store, retrieve, and manage data** in a database.

>SQL is a standard language used to interact with relational databases like MySQL, PostgreSQL, and SQL Server.

---

### **Table, Row, Column**

* **Table** → Stores data (like an Excel sheet)
* **Row** → One complete record
* **Column** → One field or attribute

**Example: Employee table**

| emp_id | name  | salary |
| ------ | ----- | ------ |
| 1      | Rahul | 50000  |

* Table → Employee
* Row → Rahul’s data
* Column → emp_id, name, salary

---
### **What is Normalization?**

**Normalization** is the process of **organizing data** to:

* Reduce **data redundancy**
* Improve **data consistency**
* Avoid **update, insert, delete anomalies**

> Normalization is used to break large tables into smaller related tables and maintain data integrity.

### **Normal Forms**

---

### **1NF – First Normal Form**

### Rules:

* Atomic values (no multiple values in one column)
* No repeating groups

### ❌ Not in 1NF

| emp_id | name  | phone_numbers |
| ------ | ----- | ------------- |
| 1      | Rahul | 9999, 8888    |

### ✅ In 1NF

| emp_id | name  | phone_number |
| ------ | ----- | ------------ |
| 1      | Rahul | 9999         |
| 1      | Rahul | 8888         |

---

### **2NF – Second Normal Form**

### Rules:

* Must be in **1NF**
* No **partial dependency**
* Applies to **composite primary keys**

### ❌ Problem:

Primary Key → (emp_id, project_id)

| emp_id | project_id | emp_name |
| ------ | ---------- | -------- |

Here:

* `emp_name` depends only on `emp_id`

### ✅ Solution:

* Employee table → emp_id, emp_name
* Project table → emp_id, project_id

---

### **3NF – Third Normal Form**

### Rules:

* Must be in **2NF**
* No **transitive dependency**

### ❌ Example:

| emp_id | emp_name | dept_id | dept_name |
| ------ | -------- | ------- | --------- |

Here:

* emp_id → dept_id
* dept_id → dept_name
  ➡ transitive dependency

### ✅ Solution:

* Employee table → emp_id, emp_name, dept_id
* Department table → dept_id, dept_name

---

### **BCNF – Boyce-Codd Normal Form**

### Rule:

* Stronger version of 3NF
* **Every determinant must be a candidate key**

### Example (3NF but not BCNF):

* Teacher teaches multiple subjects
* Subject assigned to one teacher

Violation happens when:

* Non-key attribute determines a key

📌 Used in **advanced database design**

---

### **6. Why Normalization is Needed?**


> Normalization is needed to reduce redundancy, avoid data anomalies, and maintain data consistency.

### Benefits:

✔ No duplicate data
✔ Less storage
✔ Easy maintenance
✔ Data integrity
✔ Better database design

### Trade-off:

* More tables
* More joins (slight performance cost)

➡ In **Data Warehouses**, we may use **denormalization** for performance.

---

## **One-Line Revision**

* SQL → Language to work with relational data
* Table → Collection of rows
* Row → One record
* Column → One attribute
* Normalization → Remove redundancy
* 1NF → Atomic values
* 2NF → No partial dependency
* 3NF → No transitive dependency
* BCNF → Stronger 3NF

---
## **3. Python Basic**

### **What is Python?**

Python is a high-level, interpreted, and easy-to-use programming language widely used for data engineering, data analysis, automation, and machine learning.

### **Interpreted Language Concept**

Python is an interpreted language, which means:

* Code is executed line by line
* No separate compilation step
* Errors are shown at runtime

**How Python Works Flow:**

1. Python code (.py file`)

2. Python Interpreter

3. Bytecode

4. Python Virtual Machine (PVM)

5. Output

>Python is interpreted, meaning the interpreter reads and executes code line by line, which makes debugging easier but slightly slower than compiled languages.

---

## **4. Azure Data Engineering Overview**


### **What is Cloud Computing?**

**Cloud computing means using computing resources (servers, storage, databases, software) over the internet instead of your local computer.**

👉 You don’t buy servers.
👉 You **rent** them when needed.

### Example (Easy):

* Earlier: Company buys a server and stores data in office.
* Now: Company stores data in **cloud** (Azure, AWS, GCP).

### Key Points :

* On-demand resources
* Pay-as-you-use
* Scalable (increase/decrease easily)
* High availability

---

### **What is Azure?**

**Microsoft Azure is a cloud computing platform provided by Microsoft.**

Azure provides:

* Storage
* Databases
* Data processing
* Analytics
* Machine Learning

👉 In **Data Engineering**, Azure is used to:

* Ingest data
* Store large data
* Process data
* Analyze data

---

## **Azure Data Engineering Tools**

### **1. Azure Data Factory (ADF)**

**Azure Data Factory is a cloud ETL/ELT tool used to move and transform data.**

### What it does:

* Extract data from source (DB, API, files)
* Load data into destination (ADLS, Synapse)
* Schedule pipelines

### Example:

Source → MySQL / API
Target → ADLS / Synapse

### Key Points:

* Used for **data ingestion**
* Pipeline-based
* Supports scheduling and monitoring
* No code / low code tool

---

### **2. Azure Data Lake Storage (ADLS Gen2)**

**ADLS Gen2 is a cloud storage service for storing large amounts of data.**

### What it stores:

* Raw data
* Processed data
* Structured / semi-structured / unstructured data

### Example:

* CSV files
* JSON files
* Parquet files
* Logs

### Key Points:

* Highly scalable
* Cheap storage
* Used as central data lake
* Integrates with Databricks, ADF, Synapse

---

### **3. Azure Databricks**

**Azure Databricks is an Apache Spark-based analytics platform.**

### What it does:

* Data processing
* Data transformation
* Big data analytics

### Example:

* Read data from ADLS
* Transform using PySpark
* Write back to ADLS or Synapse

### Key Points:

* Used for **big data processing**
* Supports PySpark, SQL, Scala
* Fast and scalable
* Used for batch and streaming

---

### **4. Azure Synapse Analytics**

**Azure Synapse Analytics is a data warehouse + analytics service.**

### What it does:

* Store structured data
* Run complex SQL queries
* Business reporting

### Example:

* Processed data → Synapse
* Power BI connects to Synapse for reports

### Key Points:

* Data warehouse
* Supports SQL
* Used for analytics and reporting
* Works with large datasets

---

### **Azure Data Engineering Flow (Very Important)**

```
Source
   ↓
Azure Data Factory
   ↓
Azure Data Lake (ADLS)
   ↓
Azure Databricks (Processing)
   ↓
Azure Synapse Analytics
   ↓
Power BI / Analytics
```

---

> **Azure Data Engineering uses Azure services like Data Factory for ingestion, Data Lake for storage, Databricks for processing, and Synapse for analytics and reporting.**

---


## **5. OLAP vs OLTP**

### **What is OLTP?**

**OLTP (Online Transaction Processing)** systems are used for **day-to-day transactions**.

### Simple Meaning:

👉 Used where **data is frequently inserted, updated, or deleted**.

### Examples:

* Banking transactions
* Online shopping orders
* ATM withdrawals
* Booking systems

### OLTP Characteristics:

* Handles **many small transactions**
* Works on **current/live data**
* Uses **row-based storage**
* Fast insert/update/delete
* Data is highly normalized

### Example Query (OLTP):

```sql
INSERT INTO orders VALUES (...);
UPDATE account SET balance = balance - 100;
```

---

## **What is OLAP?**

**OLAP (Online Analytical Processing)** systems are used for **data analysis and reporting**.

### Simple Meaning:

👉 Used to **analyze large amounts of historical data**.

### Examples:

* Sales reports
* Monthly revenue analysis
* Business dashboards
* Trend analysis

### OLAP Characteristics:

* Handles **large datasets**
* Uses **historical data**
* Uses **columnar storage**
* Runs **complex aggregated queries**
* Data is often denormalized

### Example Query (OLAP):

```sql
SELECT region, SUM(sales)
FROM sales_data
GROUP BY region;
```

---

## **OLTP vs OLAP**

| Feature       | OLTP                     | OLAP                |
| ------------- | ------------------------ | ------------------- |
| Purpose       | Transactions             | Analytics           |
| Data Type     | Current data             | Historical data     |
| Queries       | Small, simple            | Complex, aggregated |
| Storage       | Row-based                | Column-based        |
| Operations    | Insert / Update / Delete | Read-heavy          |
| Users         | End users                | Analysts, BI teams  |
| Normalization | Highly normalized        | Denormalized        |

---

## **Real-Life Example (Easy to Remember)**

### E-commerce Application:

* **OLTP** → Order placed, payment done, inventory updated
* **OLAP** → Monthly sales report, top-selling products

---

## **OLTP & OLAP in Data Engineering**

👉 OLTP systems are **data sources**
👉 OLAP systems are **data targets**

### Azure Example:

* OLTP → MySQL / SQL Server
* OLAP → Azure Synapse Analytics

---

> **OLTP systems handle daily transactions using row-based storage, while OLAP systems are used for analytics with columnar storage and aggregated queries.**

---
