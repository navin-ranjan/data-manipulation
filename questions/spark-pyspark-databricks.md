
## ✅ FULL LIST OF SPARK, PYSPARK, DATABRICKS QUESTIONS (UPDATED)

---

### **1. Introduction to Spark & PySpark**

1. What is Apache Spark?
2. What are the main features of Spark?
3. What is PySpark?
4. What are the advantages of Spark over Hadoop MapReduce?
5. What are the main components of Spark?
6. What is the Spark ecosystem?
7. What is the role of the Spark driver and executor?
8. What is a Spark application?
9. What is lazy evaluation in Spark?
10. What are Spark jobs, stages, and tasks?
11. How does Spark achieve fault tolerance?
12. What is the difference between Apache Spark and Apache Flink?

---

### **2. Spark Architecture & Concepts**

1. What is an RDD (Resilient Distributed Dataset)?
2. What is a DataFrame in Spark?
3. What is a Dataset in Spark?
4. What is the difference between RDD, DataFrame, and Dataset?
5. What is a partition in Spark?
6. What is a transformation and an action in Spark?
7. What is lineage in Spark?
8. What is a DAG (Directed Acyclic Graph) in Spark?
9. What is a shuffle operation?
10. What is SparkSession?
11. What happens when an action is called in Spark?
12. How does Spark handle failures during execution?
13. What is speculative execution in Spark?
14. How does Spark handle memory management internally?

---

### **3. Getting Started with PySpark**

1. How do you install PySpark?
2. How do you create a SparkSession in PySpark?
3. How do you run PySpark in local mode?
4. How do you submit a PySpark job?
5. How do you read a CSV file using PySpark?
6. How do you write a DataFrame to a file?
7. How do you view the schema of a DataFrame?
8. How do you show the first N rows of a DataFrame?
9. How do you configure PySpark with different memory/executor settings?
10. How do you integrate PySpark with Jupyter Notebooks?

---

### **4. RDD Operations**

1. How do you create an RDD in PySpark?
2. What are common RDD transformations?
3. What are common RDD actions?
4. How do you filter data in an RDD?
5. How do you map a function over an RDD?
6. How do you perform reduce operations on RDDs?
7. How do you cache or persist an RDD?
8. How do you repartition or coalesce an RDD?
9. How do you collect data from an RDD?
10. How do you save an RDD to a file?
11. What are key-value RDDs?
12. How do you use aggregateByKey or reduceByKey in RDDs?

---

### **5. DataFrame Operations**

1. How do you create a DataFrame in PySpark?
2. How do you select columns from a DataFrame?
3. How do you filter rows in a DataFrame?
4. How do you add or drop columns?
5. How do you group and aggregate data?
6. How do you join DataFrames?
7. How do you sort DataFrames?
8. How do you handle missing data?
9. How do you change column data types?
10. How do you use UDFs (User Defined Functions) in PySpark?
11. How do you cache or persist a DataFrame?
12. How do you convert between DataFrame and RDD?
13. What’s the difference between `select`, `selectExpr`, and `withColumn`?
14. How do you handle nested or complex columns (arrays, structs, maps)?
15. How do you explode arrays in PySpark DataFrames?

---

### **6. PySpark SQL**

1. What is Spark SQL?
2. How do you run SQL queries on DataFrames?
3. How do you register a DataFrame as a temporary view?
4. How do you read and write Parquet/ORC/JSON files?
5. What are catalog functions in Spark SQL?
6. How do you use window functions in Spark SQL?
7. How do you create and use global temp views?
8. How do you use SQL functions in PySpark?
9. How do you optimize SQL queries in Spark?
10. How do you register a UDF in Spark SQL?

---

### **7. Data Sources & File Formats**

1. What file formats does Spark support?
2. How do you read/write CSV, JSON, Parquet, and Avro files?
3. What is schema inference?
4. How do you specify custom schemas?
5. How do you read data from a database using JDBC?
6. How do you handle corrupt or malformed records?
7. How do you partition data when writing files?
8. How do you read multiple file formats from a directory?
9. What’s the difference between save modes (overwrite, append, etc.)?
10. How does Spark handle large files and small files?

---

### **8. Data Cleaning & Transformation**

1. How do you handle missing or null values?
2. How do you drop duplicates in a DataFrame?
3. How do you replace values in a DataFrame?
4. How do you split and extract columns?
5. How do you apply custom functions to columns?
6. How do you pivot and unpivot data?
7. How do you sample data in PySpark?
8. How do you rename columns in PySpark?
9. How do you normalize or scale data in PySpark?
10. How do you explode nested arrays or structs?
11. How do you flatten nested JSON data?

---

### **9. Performance Tuning & Optimization**

1. What is Spark Catalyst Optimizer?
2. What is Tungsten in Spark?
3. How do you view and understand Spark execution plans?
4. How do you optimize Spark jobs?
5. What are broadcast joins?
6. How do you control partitioning?
7. How do you tune memory and executor settings?
8. How do you avoid data skew?
9. How do you use caching and persistence effectively?
10. What are best practices for writing efficient Spark code?
11. What is whole-stage code generation?
12. What is predicate pushdown?
13. What are wide and narrow transformations?
14. How do you debug out-of-memory (OOM) errors in Spark?

---

### **10. Spark Streaming & Structured Streaming**

1. What is Spark Streaming?
2. What is Structured Streaming?
3. What are the differences between DStreams and Structured Streaming?
4. How do you read streaming data in PySpark?
5. How do you write streaming results?
6. What are output modes in Structured Streaming?
7. How do you handle late data and watermarking?
8. How do you join streaming and static data?
9. How do you monitor streaming queries?
10. What are the checkpointing mechanisms in Spark Streaming?
11. How do you handle exactly-once processing?
12. What are watermarks and event-time windows?
13. How do you maintain state in streaming queries?

---

### **11. Machine Learning with PySpark MLlib**

1. What is MLlib in Spark?
2. What are the main features of MLlib?
3. How do you prepare data for ML in PySpark?
4. How do you use feature transformers?
5. How do you build and train ML models in PySpark?
6. How do you evaluate ML models?
7. How do you save and load ML models?
8. What are pipelines in PySpark MLlib?
9. How do you tune hyperparameters in PySpark?
10. What algorithms are available in MLlib?
11. What’s the difference between transformers and estimators?
12. How does cross-validation work in PySpark ML?
13. What are the limitations of MLlib compared to scikit-learn?

---

### **12. Databricks Platform**

1. What is Databricks?
2. What are the main features of Databricks?
3. How do you create and manage Databricks notebooks?
4. How do you run Spark jobs on Databricks?
5. What is a Databricks cluster?
6. How do you install libraries in Databricks?
7. How do you use Databricks Jobs and Workflows?
8. How do you manage data with Databricks DBFS?
9. How do you use Databricks Repos and version control?
10. How do you schedule jobs in Databricks?
11. How do you use Databricks REST API?
12. How do you monitor and debug jobs in Databricks?
13. How do you use Databricks SQL and dashboards?
14. How do you connect Databricks to external data sources?
15. What are Databricks Delta Lake and its benefits?
16. What are the different cluster modes in Databricks (interactive, job)?
17. What is Unity Catalog and how is it used?
18. How does Databricks handle user access and RBAC?
19. How do you manage compute costs in Databricks?

---

### **13. Delta Lake**

1. What is Delta Lake?
2. What are the benefits of Delta Lake over Parquet?
3. How do you create Delta tables?
4. How do you perform ACID transactions in Delta Lake?
5. How do you update and delete data in Delta tables?
6. What is time travel in Delta Lake?
7. How do you optimize Delta tables?
8. How do you handle schema evolution in Delta Lake?
9. How do you use Delta Lake with streaming data?
10. How does Delta Lake support upserts (merge)?
11. What is Z-order clustering and why is it used?
12. What are `OPTIMIZE`, `VACUUM`, and `REORG TABLE` used for?

---

### **14. Security & Best Practices**

1. How do you secure data in Spark and Databricks?
2. What are access controls in Databricks?
3. How do you manage secrets in Databricks?
4. What are best practices for Spark job development?
5. How do you monitor and log Spark applications?
6. How do you handle sensitive data in Spark?
7. What is Unity Catalog and how does it help with governance?
8. What is the principle of least privilege in Spark/Databricks?
9. How do you handle logging in Databricks notebooks?
10. How do you manage audit logs in Databricks?

---

### **15. Advanced Topics**

1. What is GraphFrames in Spark?
2. How do you use SparkR?
3. How do you integrate Spark with BI tools?
4. How do you use Spark with cloud storage (S3, ADLS, GCS)?
5. How do you use Spark with Kubernetes?
6. What is Koalas and how does it relate to Pandas?
7. How do you use Databricks Connect?
8. How do you use MLflow in Databricks?
9. What is Apache Arrow and how does it improve performance?
10. How do you integrate Spark with Snowflake or BigQuery?
11. How do you implement CI/CD pipelines for Databricks?

---



-----------------------------------------------------------------------------------------------

Pyspark Practical 

* Joins
* Filters
* Aggregations
* String/date functions
* Data type operations
* Grouping
* Window functions
* Case statements, etc.

---

## ✅ Table 1: `orders`

### 🔸 **Schema**

| Column Name  | Data Type |
| ------------ | --------- |
| order\_id    | Integer   |
| customer\_id | Integer   |
| order\_date  | Date      |
| amount       | Float     |
| city         | String    |

```python
from pyspark.sql.types import *
from pyspark.sql.functions import *

orders_data = [
    (1, 101, '2023-01-15', 250.75, 'Delhi'),
    (2, 102, '2023-01-16', 100.00, 'Mumbai'),
    (3, 103, '2023-01-17', 500.00, 'Bangalore'),
    (4, 101, '2023-02-05', 700.25, 'Delhi'),
    (5, 104, '2023-02-15', 200.00, 'Chennai'),
    (6, 105, '2023-03-10', 150.00, 'Kolkata'),
    (7, 102, '2023-03-12', 300.50, 'Mumbai'),
    (8, 106, '2023-03-15', 800.00, 'Hyderabad')
]

orders_schema = StructType([
    StructField("order_id", IntegerType(), True),
    StructField("customer_id", IntegerType(), True),
    StructField("order_date", DateType(), True),
    StructField("amount", FloatType(), True),
    StructField("city", StringType(), True)
])

df_orders = spark.createDataFrame(orders_data, schema=orders_schema)
df_orders.show()
```

---

## ✅ Table 2: `customers`

### 🔸 **Schema**

| Column Name  | Data Type |
| ------------ | --------- |
| customer\_id | Integer   |
| name         | String    |
| gender       | String    |
| birth\_date  | Date      |
| email        | String    |

```python
customers_data = [
    (101, "Alice", "F", "1990-06-10", "alice@example.com"),
    (102, "Bob", "M", "1985-09-21", "bob@example.com"),
    (103, "Charlie", "M", "1992-01-15", "charlie@example.com"),
    (104, "Diana", "F", "1988-12-05", "diana@example.com"),
    (105, "Evan", "M", "1995-04-17", "evan@example.com"),
    (107, "Grace", "F", "1993-11-29", "grace@example.com")
]

customers_schema = StructType([
    StructField("customer_id", IntegerType(), True),
    StructField("name", StringType(), True),
    StructField("gender", StringType(), True),
    StructField("birth_date", DateType(), True),
    StructField("email", StringType(), True)
])

df_customers = spark.createDataFrame(customers_data, schema=customers_schema)
df_customers.show()
```

---


* **Joins**
* **Aggregation**
* **String/date/numeric functions**
* **Window functions**
* **Null handling**
* **Data type conversions**
* **Data cleansing & transformation**
* **Categorization**
* **Filtering & grouping**
* **ETL logic**

---

## ✅ 40+ PySpark / Spark SQL Practical Interview-style Questions

### 🔹 𝗝𝗼𝗶𝗻𝘀 & 𝗙𝗶𝗹𝘁𝗲𝗿𝘀 (Beginner - Intermediate)

1. Join `orders` and `customers` and show: order\_id, name, city, amount.
2. List customers who **have never placed** an order.
3. Display all orders where the amount > 300 and city = 'Delhi'.
4. Get the **latest order** (by date) placed by each customer.
5. Retrieve all **orders in March 2023** along with customer names.
6. Show all **customer names and order dates**, even if no order exists.
7. Filter orders made by **female customers** only.
8. Count how many **distinct customers** placed at least one order.

---

### 🔹 𝗔𝗴𝗴𝗿𝗲𝗴𝗮𝘁𝗶𝗼𝗻𝘀 & 𝗚𝗿𝗼𝘂𝗽 𝗕𝘆

9. Find **total amount spent** per customer.
10. Calculate the **average order amount** per city.
11. Count how many orders were placed **per month**.
12. Get **maximum order value per customer**.
13. List customers whose **total spending exceeds ₹500**.
14. Calculate **minimum and maximum order** amounts.
15. Find cities where **total order amount > ₹1000**.

---

### 🔹 𝗦𝘁𝗿𝗶𝗻𝗴 𝗙𝘂𝗻𝗰𝘁𝗶𝗼𝗻𝘀

16. Extract and display only the **email domain** of each customer.
17. Create a column for **uppercase customer names**.
18. Show only customers whose **email ends with 'example.com'**.
19. Get the **length of customer names**.
20. Replace all **dots (.) in email with hyphens (-)**.

---

### 🔹 𝗗𝗮𝘁𝗲 & 𝗧𝗶𝗺𝗲 𝗢𝗽𝗲𝗿𝗮𝘁𝗶𝗼𝗻𝘀

21. Calculate the **age** of each customer.
22. Extract **month and year** from each order.
23. Count how many **orders placed in February**.
24. Show customers **born before 1990**.
25. Add a column `order_year_month` in **YYYY-MM** format.

---

### 🔹 𝗪𝗶𝗻𝗱𝗼𝘄 𝗙𝘂𝗻𝗰𝘁𝗶𝗼𝗻𝘀

26. Add a **rank** to each customer's order based on order amount (desc).
27. Get the **top 2 highest amount orders** per customer.
28. Calculate the **cumulative sum** of order amounts per customer.
29. Find the **running average** of amount per customer.

---

### 🔹 𝗡𝘂𝗹𝗹 𝗛𝗮𝗻𝗱𝗹𝗶𝗻𝗴

30. Identify customers with **null email addresses**.
31. Replace null emails with **'[unknown@example.com](mailto:unknown@example.com)'**.
32. After left join, show which orders had **no matching customer**.

---

### 🔹 𝗗𝗮𝘁𝗮 𝗧𝘆𝗽𝗲 & 𝗖𝗮𝘀𝘁𝗶𝗻𝗴

33. Cast `amount` from float to integer.
34. Round `amount` to **2 decimal places**.
35. Create a new column with **GST (18%) on amount**.

---

### 🔹 𝗖𝗮𝘀𝗲 / 𝗖𝗼𝗻𝗱𝗶𝘁𝗶𝗼𝗻𝗮𝗹 𝗟𝗼𝗴𝗶𝗰

36. Categorize orders:
      - `'High'` if amount > 500
      - `'Medium'` if 200–500
      - `'Low'` if < 200
37. Add a new column `age_group`:
      - `'Senior'` if age > 30
      - `'Young'` otherwise
38. Tag each order as `'Repeat'` or `'First Time'` using dense rank.

---

### 🔹 𝗝𝗼𝗶𝗻-𝗕𝗮𝘀𝗲𝗱 𝗧𝗿𝗮𝗻𝘀𝗳𝗼𝗿𝗺𝗮𝘁𝗶𝗼𝗻

39. Combine customer and order data and create a new column `customer_city_match`:
      - 'Yes' if customer city == order city
      - 'No' otherwise

---

### 🔹 𝗔𝗱𝘃𝗮𝗻𝗰𝗲𝗱 / 𝗘𝗧𝗟 𝗟𝗼𝗴𝗶𝗰

40. Create a **monthly summary table**:
      - Month
      - Total Orders
      - Total Amount
      - Unique Customers
41. Filter customers who have **placed at least 2 orders**.
42. List top 3 cities with **highest average order amount**.
43. Calculate **average age** of customers by gender.
44. Generate order summary:
      - customer\_id
      - order\_count
      - first\_order\_date
      - last\_order\_date

---

