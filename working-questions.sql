--- SQL question -------
Table t1:
 NULL
 0
 1
 2
 2
Table t2:
 NULL
 1
 2

Question: What will be the output of the following SQL operations?
INNER JOIN
LEFT JOIN
RIGHT JOIN
FULL OUTER JOIN
UNION
UNION ALL
INTERSECT
EXCEPT / MINUS

--- pyspark question --------------

Window Functions 

ROW_NUMBER
RANK vs DENSE_RANK
LAG / LEAD
Running Totals
Identifying Gaps in Dates

# Define schema
schema = StructType([
    StructField("customer_id", IntegerType(), True),
    StructField("txn_date", DateType(), True),
    StructField("amount", IntegerType(), True)
])

# Data
data = [
    (101, "2024-01-01", 1000),
    (101, "2024-01-05", 1500),
    (101, "2024-01-10", 2000),
    (102, "2024-01-03", 3000),
    (102, "2024-01-08", 2500)
]

✅ Question 1: Assign Transaction Sequence per Customer (ROW_NUMBER)
A fintech company wants to assign a transaction sequence
number for each customer based on transaction date.

Explanation
partitionBy()
orderBy()
row_number()

✅ Question 2: Rank Customers by Transaction Amount

(RANK vs DENSE_RANK)

🔹 Scenario

An analytics team wants to rank transactions by amount per customer.

✅ Question 3: Fetch Previous Transaction Amount (LAG)
🔹 Scenario

A bank wants to compare each transaction with the previous transaction amount per customer.

✅ Question 4: Fetch Next Transaction Amount (LEAD)
🔹 Scenario

Operations team wants to analyze the next transaction value for prediction models.

✅ Question 5: Calculate Running Total per Customer
🔹 Scenario

A payments company wants to calculate cumulative spend per customer over time.

✅ Question 6: Identify Missing Transaction Dates (GAPS)
🔹 Scenario

The data quality team wants to identify missing transaction dates per customer.



