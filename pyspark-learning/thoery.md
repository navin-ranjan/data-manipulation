

# **1. RDD (Resilient Distributed Dataset)**

RDD is the **fundamental data structure** in Spark. It represents an **immutable**, **distributed**, **fault-tolerant collection** of objects processed in parallel.

---

# **1.1 Creating RDD Using Python Variable**

### ✔ Concept

You create an RDD from **local Python data** using the SparkContext method:

* `parallelize()`
* `sc.parallelize(<python-list>)`

Spark will split the data into **partitions**, distributing them across cluster nodes.

### ✔ Example

```python
from pyspark.sql import SparkSession
spark = SparkSession.builder.appName("RDD Example").getOrCreate()
sc = spark.sparkContext

data = [10, 20, 30, 40, 50]

rdd1 = sc.parallelize(data)
print(rdd1.collect())
```

### ✔ Output:

```
[10, 20, 30, 40, 50]
```

### ✔ Specify Partitions

```python
rdd2 = sc.parallelize(data, 4)
print(rdd2.getNumPartitions())
```

### ✔ When to use?

* For small dataset used for testing
* For in-memory computation
* When data is already present in Python

---

# **1.2 Creating RDD Using Text File**

### ✔ Concept

We load external data using:

* `textFile("path")`

It reads a file line-by-line.

### ✔ Example

```python
rdd_file = sc.textFile("/home/navin/data/sample.txt")

print(rdd_file.collect())
```

### ✔ Example file content (`sample.txt`)

```
apple
banana
grapes
```

### ✔ Output:

```
['apple', 'banana', 'grapes']
```

### ✔ Reading from Multiple Files

```python
rdd = sc.textFile("/home/navin/data/*.txt")
```

### ✔ Specify Minimum Partitions

```python
rdd = sc.textFile("/home/navin/data/sample.txt", minPartitions=4)
```

### ✔ Good for:

* Log files
* CSV, JSON (read line by line)
* Large datasets stored in HDFS/S3/Local FS

---

# **1.3 Creating RDD by Applying Transformations on existing RDDs**

### ✔ Concept

Transformations **create a new RDD** from an existing one.

Common transformations:

* `map()`
* `flatMap()`
* `filter()`
* `distinct()`
* `union()`
* `intersection()`
* `groupByKey()`
* `reduceByKey()`

### ✔ Example 1 — map()

```python
rdd = sc.parallelize([1, 2, 3, 4])

rdd2 = rdd.map(lambda x: x * 10)

print(rdd2.collect())
```

➡ Output:

```
[10, 20, 30, 40]
```

---

### ✔ Example 2 — filter()

```python
rdd = sc.parallelize([10, 25, 5, 60])
rdd2 = rdd.filter(lambda x: x > 20)

print(rdd2.collect())
```

➡ Output:

```
[25, 60]
```

---

### ✔ Example 3 — flatMap()

```python
rdd = sc.parallelize(["hello world", "pyspark rdd"])

rdd2 = rdd.flatMap(lambda x: x.split(" "))

print(rdd2.collect())
```

➡ Output:

```
['hello', 'world', 'pyspark', 'rdd']
```

---

### ✔ Creating RDD Using union()

```python
r1 = sc.parallelize([1, 2, 3])
r2 = sc.parallelize([4, 5])

combined = r1.union(r2)
combined.collect()
```

➡ Output:

```
[1, 2, 3, 4, 5]
```

---

# **RDD Flow Summary**

```
Python Variable → parallelize() → RDD1
Text File       → textFile()    → RDD2
Transformations → map/filter/...→ New RDD
```

---

# **Interview Points**

### **Q. What is an RDD?**

* Immutable distributed collection
* Fault-tolerant (lineage graph)
* Lazy evaluation
* Perform transformations + actions

### **Q. Name ways to create an RDD.**

1. parallelize()
2. textFile()
3. Transformations on existing RDDs

### **Q. What is Lazy Evaluation?**

Transformations are not executed until an action is called (e.g., collect(), count(), first()).

---

Below are **deep, clear, interview-ready PySpark notes** on the requested RDD Transformations with **examples + outputs + when to use + best practices**.

---

# **2. RDD Transformations**

RDD Transformations are **lazy operations** that create **a new RDD** from an existing one.

Transformations you asked:

1. `glom()`
2. `map()`
3. `mapPartitions()`
4. `mapPartitionsWithIndex()`
5. `mapValues()`

---

# **2.1 glom()**

### ✔ Concept

`glom()` converts **each partition** of an RDD into a **list**.

* Output RDD = one element per partition
* Each element is a **list of all values inside that partition**

### ✔ Example

```python
rdd = sc.parallelize([1, 2, 3, 4, 5, 6], 3)
result = rdd.glom().collect()
print(result)
```

### ✔ Output

```
[[1, 2], [3, 4], [5, 6]]
```

### ✔ When to use?

* To inspect how Spark distributed data across partitions
* Debugging partition imbalance
* Understanding skew

---

# **2.2 map()**

### ✔ Concept

`map()` applies a function to **each element** of RDD.

### ✔ Example

```python
rdd = sc.parallelize([1, 2, 3])
result = rdd.map(lambda x: x * 10).collect()
print(result)
```

### ✔ Output:

```
[10, 20, 30]
```

### ✔ When to use?

* Element-wise transformation
* Format conversion
* Mathematical operations

### ✔ Notes

* One input → one output
* Does **not** change data distribution

---

# **2.3 mapPartitions()**

### ✔ Concept

`mapPartitions()` processes **an entire partition** at once instead of element-by-element.

* Input: iterator of partition
* Output: iterator after transformation

⚠ Faster than `map()` when:

* Heavy initialization is required
* Connecting to DB/API once per partition

### ✔ Example

```python
def process_partition(iterator):
    return (x * 2 for x in iterator)

rdd = sc.parallelize([1, 2, 3, 4], 2)
result = rdd.mapPartitions(process_partition).collect()
print(result)
```

### ✔ Output

```
[2, 4, 6, 8]
```

### ✔ Real Use Case

```python
def write_to_db(partition):
    db = connect_db()       # expensive
    for record in partition:
        db.write(record)    # process data
    db.close()
    return []
```

### ✔ When to use?

* Database writes
* Web API calls
* Expensive setup tasks

---

# **2.4 mapPartitionsWithIndex()**

### ✔ Concept

Same as `mapPartitions()` but also returns **index (partition number)**.

### ✔ Example

```python
def process(index, iterator):
    return (f"Partition {index} -> {x}" for x in iterator)

rdd = sc.parallelize([10, 20, 30, 40], 2)
result = rdd.mapPartitionsWithIndex(process).collect()
print(result)
```

### ✔ Output:

```
['Partition 0 -> 10', 'Partition 0 -> 20', 
 'Partition 1 -> 30', 'Partition 1 -> 40']
```

### ✔ When to use?

* Debugging
* Understanding partition distribution
* Special processing rules per partition

---

# **2.5 mapValues()** (only for Pair RDD)

### ✔ Concept

`mapValues()` applies a function **only to the value part** of key-value RDD.

* Does NOT change keys
* Keeps original partitioning scheme (important for performance)

### ✔ Example

```python
rdd = sc.parallelize([("a", 10), ("b", 20), ("c", 30)])
result = rdd.mapValues(lambda x: x * 10).collect()
print(result)
```

### ✔ Output:

```
[('a', 100), ('b', 200), ('c', 300)]
```

### ✔ When to use?

* Value transformation in Pair RDD
* Key remains same
* Data cleaning / formatting

---

# **Summary Table**

| Transformation               | Operates On        | Output                  | Use Case               |
| ---------------------------- | ------------------ | ----------------------- | ---------------------- |
| **glom()**                   | Partition          | List per partition      | Debug partitions       |
| **map()**                    | Each element       | 1 record → 1 record     | Simple transformations |
| **mapPartitions()**          | Partition iterator | Process whole partition | DB/API calls           |
| **mapPartitionsWithIndex()** | Partition + index  | Partition-aware output  | Debug, custom logic    |
| **mapValues()**              | Key-value RDD      | Transform only values   | ETL, formatting        |

---

# **Interview Tips**

### **Q: Difference between map() and mapPartitions()?**

| map()                           | mapPartitions()                        |
| ------------------------------- | -------------------------------------- |
| Operates per element            | Operates per partition                 |
| Slower for heavy initialization | Faster as init done once per partition |
| Safer                           | Risk of memory overflow                |

---

### **Q: When to use glom()?**

* To inspect partition contents
* Debug skew

---

Here are **clear, crisp, and detailed notes** on **Map vs FlatMap** in PySpark with examples, diagrams, output, and interview points.

---

# **Map vs FlatMap in PySpark**

## ✔ **1. map()**

### **Concept**

* Applies a function to **each element** of RDD.
* **1 input → 1 output**
* Output RDD has **same number of elements** as input (unless transformation removes elements).

### **Syntax**

```python
rdd.map(function)
```

---

## ✔ **2. flatMap()**

### **Concept**

* Applies a function but **flattens** the result.
* **1 input → 0, 1, or many outputs**
* Output RDD has **more or fewer elements** than input.

### **Syntax**

```python
rdd.flatMap(function)
```

---

# **Examples**

## ✔ Example 1: Simple transformation

### **map()**

```python
rdd = sc.parallelize(["hello world", "spark rdd"])
rdd_map = rdd.map(lambda x: x.split(" "))
print(rdd_map.collect())
```

### **Output**

```
[['hello', 'world'], ['spark', 'rdd']]
```

---

### **flatMap()**

```python
rdd_flat = rdd.flatMap(lambda x: x.split(" "))
print(rdd_flat.collect())
```

### **Output**

```
['hello', 'world', 'spark', 'rdd']
```

---

# **Difference Summary Table**

| Feature         | map()                | flatMap()                        |
| --------------- | -------------------- | -------------------------------- |
| Output Elements | 1 → 1                | 1 → many                         |
| Flattening      | ❌ No                 | ✔ Yes                            |
| Output Size     | Same as input        | Can increase/decrease            |
| Common Use      | Formatting, math ops | Splitting text, exploding arrays |

---

# **Diagram**

### **map() output**

```
Input:  ["a b", "c d"]

map(split) →  
[ ["a","b"], ["c","d"] ]
```

### **flatMap() output**

```
Input:  ["a b", "c d"]

flatMap(split) →  
["a","b","c","d"]
```

---

# **Real Use Cases**

### **map()**

* Format each record
* Convert types
* JSON parsing (one JSON → one object)

### **flatMap()**

* Text processing (split into words)
* Explode array fields
* Create multiple rows from one row

---

# **Interview Points**

### **Q1: Key difference between map() and flatMap()?**

* `map()` → **1:1 transformation**
* `flatMap()` → **1:N transformation + flattening**

### **Q2: Which is used for word count?**

`flatMap()` because text lines must be split into words.

### **Q3: What happens if flatMap() returns an empty list?**

That element is **removed** (0 output elements).

---

# **Quick Example: Word Count (real interview use)**

```python
rdd = sc.textFile("file.txt")

words = rdd.flatMap(lambda line: line.split(" "))
pairs = words.map(lambda w: (w, 1))
counts = pairs.reduceByKey(lambda x, y: x + y)

print(counts.collect())
```

---

Below are **clear, detailed, interview-oriented notes** for:

1. **Key-Value (Pair) RDD**
2. **groupByKey()**
3. **reduceByKey()**

With explanations, examples, diagrams, use cases, and interview comparisons.

---

# **1. Key-Value (Pair) RDD**

### ✔ Concept

A **Key-Value RDD** (Pair RDD) is an RDD where each element is a **tuple (key, value)**.

Example:

```python
[("a", 1), ("b", 2), ("a", 3)]
```

Pair RDDs allow operations like:

* reduceByKey()
* groupByKey()
* sortByKey()
* mapValues()
* flatMapValues()

### ✔ Creating Pair RDD

```python
rdd = sc.parallelize([("a", 1), ("b", 2), ("a", 3)])
```

### ✔ Convert normal RDD → Pair RDD

```python
rdd = sc.parallelize(["apple", "banana", "apple"])

pair = rdd.map(lambda x: (x, 1))
print(pair.collect())
```

Output:

```
[('apple', 1), ('banana', 1), ('apple', 1)]
```

---

# **2. groupByKey()**

### ✔ Concept

`groupByKey()` groups **values** of the same key into a **list**.

### **Input**

```
("a", 1)
("b", 2)
("a", 3)
```

### **Output**

```
("a", [1, 3])
("b", [2])
```

### ✔ Example

```python
rdd = sc.parallelize([("a", 1), ("b", 2), ("a", 3)])

result = rdd.groupByKey().map(lambda x: (x[0], list(x[1]))).collect()
print(result)
```

### ✔ Output

```
[('a', [1, 3]), ('b', [2])]
```

---

### ✔ When to use groupByKey()

* When you need **all values** for each key
* When you want to apply **custom aggregation** that requires a full list

Example:

* All marks of a student
* All records for a user
* All events for a product

---

### ❌ **Major Drawback** (VERY IMPORTANT FOR INTERVIEW)

`groupByKey()` **shuffles all values** → heavy network cost.

Example:

```
("a", [1,2,3,....10000])  → heavy shuffle
```

### ⚠ Inefficient

Because it sends **all values across network**.

---

# **3. reduceByKey()**

### ✔ Concept

`reduceByKey()` performs **aggregation** for each key using a reduce function (like sum, max, min).

It **reduces data before shuffling**, making it more efficient than `groupByKey()`.

### ✔ Example (Sum values by key)

```python
rdd = sc.parallelize([("a", 1), ("b", 2), ("a", 3)])

result = rdd.reduceByKey(lambda x, y: x + y).collect()
print(result)
```

### ✔ Output

```
[('a', 4), ('b', 2)]
```

---

### ✔ How reduceByKey works internally?

**Combiner (Map-side reduction)**
Data is partially reduced **before shuffle**, then fully reduced.

```
("a", 1), ("a", 3)  
➡ map-side: ("a", 4)
➡ shuffle: only ("a", 4) travels
```

### ✔ Efficient

reduceByKey() is preferred for:

* Summing
* Counting
* Aggregating
* Merging

---

# **Diagram: groupByKey vs reduceByKey**

```
Input RDD:
("a", 1), ("a", 3), ("b", 2)
```

### groupByKey()

```
Shuffle sends: 1, 3               (heavy)
Output: ("a", [1,3])
```

### reduceByKey()

```
Map-side: ("a", 4)
Shuffle sends: 4                  (light)
Output: ("a", 4)
```

---

# **Performance Comparison (VERY IMPORTANT)**

| Feature        | groupByKey()         | reduceByKey()           |
| -------------- | -------------------- | ----------------------- |
| Shuffle Volume | HIGH                 | LOW                     |
| Efficiency     | ❌ Slow               | ✔ Fast                  |
| Memory         | HIGH usage           | Low                     |
| Output         | key → list of values | key → aggregated result |
| Use case       | Need all values      | Need aggregated result  |

---

# **When to use which?**

### ✔ Use `reduceByKey()` when:

* You want sum, count, min, max, average
* You want better performance
* You don’t need full list of values

### ✔ Use `groupByKey()` when:

* You need **full list**
* You apply complex logic requiring all values
  Example:
  Group all movies by actor → need all movie names.

---

# **Example: Word Count using reduceByKey()**

```python
text = sc.textFile("sample.txt")

counts = (
    text.flatMap(lambda x: x.split(" "))
        .map(lambda x: (x, 1))
        .reduceByKey(lambda x, y: x + y)
)

print(counts.collect())
```

---

# **Interview Questions**

### **Q1: groupByKey vs reduceByKey?**

* reduceByKey() is **more efficient**
* reduceByKey() does **map-side combine**
* groupByKey() transfers **all values over network**

### **Q2: Why is reduceByKey faster?**

Because it performs **local combining before shuffle**.

### **Q3: When should you use groupByKey()?**

When all values must be collected per key.

---

# **📌 PySpark — Creating DataFrames from Various File Formats**

---

## **1️⃣ CSV**

```python
df = spark.read \
    .option("header", True) \
    .option("inferSchema", True) \
    .csv("data/file.csv")
```

📌 Use for tabular data
📌 Options: `header`, `inferSchema`, `sep`

---

## **2️⃣ TXT**

```python
df = spark.read.text("data/file.txt")
```

📌 Creates **1 column** named `"value"`
📌 Good for logs / documents

---

## **3️⃣ RDD**

```python
rdd = sc.parallelize([(1,"A",20),(2,"B",25)])
columns = ["id", "name", "age"]
df = spark.createDataFrame(rdd, columns)
```

📌 Used when data is unstructured → transform → convert to DataFrame

---

## **4️⃣ JSON**

### Without automatic schema

```python
df = spark.read.json("data/sample.json")
```

### With schema inference disabled

```python
df = spark.read \
    .option("inferSchema", True) \
    .json("data/sample.json")
```

📌 Supports Nested JSON, Complex types
📌 Common in APIs / streaming

---

## **5️⃣ XML**

📌 Requires dependency:

```python
# Maven/Gradle package:
com.databricks:spark-xml_2.12:0.13.0+
```

```python
df = spark.read \
    .format("xml") \
    .option("rowTag", "book") \
    .load("data/books.xml")
```

* `rowTag`: root repeating element

---

## **6️⃣ Parquet**

```python
df = spark.read.parquet("data/file.parquet")
```

📌 **Best performance**
✔ Columnar
✔ Compressed
✔ Schema stored within file
✔ Used heavily in Data Lakes

---

## **7️⃣ ORC**

```python
df = spark.read.orc("data/file.orc")
```

📌 Columnar + optimized for **Hive ecosystem**
📌 Good compression + predicate pushdown

---

## **8️⃣ Avro**

📌 Requires extension:

```python
# For Spark 3.0+
spark.read.format("avro").load("data/file.avro")
```

📌 Binary row-based format
✔ Schema evolution & versioning
✔ Kafka integration common

---

## **9️⃣ Sequence File**

```python
df = spark.read \
    .format("sequencefile") \
    .load("data/seqfile")
```

📌 Hadoop native format
📌 Used in older MapReduce systems

---

## **🔟 TSV (Tab Separated Values)**

```python
df = spark.read \
    .option("sep", "\t") \
    .option("header", True) \
    .csv("data/file.tsv")
```

📌 Same as CSV but with `tab` delimiter

---

## **1️⃣1️⃣ Pipe Separated (| delimiter)**

```python
df = spark.read \
    .option("header", True) \
    .option("sep", "|") \
    .csv("data/file.psv")
```

📌 Used in telecom, finance domain

---

# **📌 Summary Table**

| Format   | Method                    | Notes                            |                |
| -------- | ------------------------- | -------------------------------- | -------------- |
| CSV      | `.csv()`                  | Use header & inferSchema         |                |
| TXT      | `.text()`                 | 1 column output                  |                |
| RDD      | `createDataFrame()`       | Use schema for production        |                |
| JSON     | `.json()`                 | Handles nested data              |                |
| XML      | `.format("xml").load()`   | Install spark-xml package        |                |
| Parquet  | `.parquet()`              | **Fastest**, default in big data |                |
| ORC      | `.orc()`                  | Best for Hive                    |                |
| Avro     | `.format("avro").load()`  | Best with Kafka                  |                |
| Sequence | `.format("sequencefile")` | Legacy Hadoop format             |                |
| TSV      | `.csv(sep="\t")`          | Header recommended               |                |
| Pipe/PSV | `.csv(sep="               | ")`                              | Telecom common |

---

# **Interview Notes**

| Question                    | Best Answer                                        |
| --------------------------- | -------------------------------------------------- |
| Best file format in Spark?  | **Parquet** (columnar + compression + metadata)    |
| Why not always inferSchema? | Adds overhead → specify schema in production       |
| JSON vs Parquet             | JSON → raw ingestion, Parquet → analytical storage |
| Spark default file format   | **Parquet**                                        |

---

Got it! Here is the complete explanation **very clearly with examples**:

---

## ✅ 1️⃣ `inferSchema`, `header`, `sep`, `delimiter`

These are options used when reading external data files.

---

### 🔹 `inferSchema = true`

✔ Spark automatically detects column data types
✖ Slight extra processing → slower for large data

📌 Example:

```python
df = spark.read.option("inferSchema", "true") \
    .csv("data.csv")
```

Without inferSchema → all columns treated as **string**.

---

### 🔹 `header = true`

✔ Tells Spark that the first row contains column names
✖ Without this → Spark assigns default column names `_c0, _c1 ...`

📌 Example:

```python
df = spark.read.option("header", "true").csv("data.csv")
```

---

### 🔹 `sep` (or) `delimiter`

✔ Defines field separator character in text files
Supported: `, | ; \t` etc.

📌 Example (comma separator):

```python
df = spark.read.option("header","true") \
    .option("sep", ",") \
    .csv("data.csv")
```

📌 Example (tab separated):

```python
df = spark.read.option("sep", "\t").csv("data.tsv")
```

📌 Example (pipe separated):

```python
df = spark.read.option("sep", "|").csv("data.psv")
```

💡 **Note**: `sep` = `delimiter` (both same)

---

## ✅ 2️⃣ Schema in Spark DataFrame

Schema = structure of DataFrame
(Columns, datatypes, nullable properties)

There are **3 ways to define schema:**

---

### ✔ A. Spark **auto-infers** schema

(Using `inferSchema=true`)

```python
df = spark.read.option("header","true") \
    .option("inferSchema", "true") \
    .csv("data.csv")

df.printSchema()
```

---

### ✔ B. Provide schema **manually** using StructType

📌 Example:

```python
from pyspark.sql.types import StructType, StructField, StringType, IntegerType

schema = StructType([
    StructField("id", IntegerType(), True),
    StructField("name", StringType(), True),
    StructField("age", IntegerType(), True)
])

df = spark.read.option("header", "true") \
    .schema(schema) \
    .csv("data.csv")
```

👍 Faster & recommended for large datasets
❌ You must know column types in advance

---

### ✔ C. Schema from **RDD transformation**

Example:

```python
from pyspark.sql import Row

rdd = spark.sparkContext.parallelize([
    Row(id=1, name="Navin", age=25),
    Row(id=2, name="Ravi", age=30)
])

df = spark.createDataFrame(rdd)
df.printSchema()
```

---

### 🔍 View schema

```python
df.printSchema()
```

---

## 🎯 Quick Summary Table

| Option          | Meaning                         | Use Case                        |
| --------------- | ------------------------------- | ------------------------------- |
| inferSchema     | Auto detect data type           | CSV, TXT                        |
| header          | First row contains column names | CSV, TSV                        |
| sep / delimiter | Custom separator used           | TSV, pipe separated             |
| schema          | Manually define structure       | Performance + strict validation |

---
## ⚡ DataFrame Actions in Spark

👉 Actions **start execution** of a DataFrame job.
👉 They **return** results (output or write data) instead of creating a new DataFrame.

---

### 🔥 Common Actions

| Action                   | Description                            | Return Type      |
| ------------------------ | -------------------------------------- | ---------------- |
| `show()`                 | Display rows                           | `None`           |
| `collect()`              | Returns all rows to driver             | `list`           |
| `take(n)`                | Returns first `n` rows                 | `list`           |
| `head(n)`                | Returns first row / first n rows       | Row / list       |
| `count()`                | Number of rows                         | `int`            |
| `first()`                | Returns first row                      | Row              |
| `distinct().count()`     | Count unique rows                      | `int`            |
| `reduce(func)`           | Reduce rows using function             | Value            |
| `foreach(func)`          | Run function on each row (worker side) | `None`           |
| `foreachPartition(func)` | Run function per partition             | `None`           |
| `write` (save)           | Write DataFrame to storage             | Saves to DB/File |

---

## 🔹 Examples

We will use a simple DataFrame:

```python
data = [
    (1, "Navin", 25),
    (2, "Ravi", 30),
    (3, "Amit", 28)
]

df = spark.createDataFrame(data, ["id", "name", "age"])
```

---

### 1️⃣ `show()`

Displays top 20 rows → used for debugging

```python
df.show()
```

---

### 2️⃣ `collect()`

Brings **entire data** to driver memory
⚠️ Dangerous for large datasets → OOM

```python
rows = df.collect()
print(rows)
```

---

### 3️⃣ `take(n)`

Fetch limited rows

```python
df.take(2)
```

---

### 4️⃣ `count()`

Returns number of rows

```python
df.count()
```

---

### 5️⃣ `first()` and `head()`

```python
df.first()     # first row
df.head(2)     # first 2 rows
```

---

### 6️⃣ `distinct().count()`

```python
unique_count = df.distinct().count()
```

---

### 7️⃣ `reduce(func)`

Mostly used on numeric columns

```python
from pyspark.sql.functions import col
from functools import reduce

df.select("age").rdd.reduce(lambda a, b: a + b)
```

---

### 8️⃣ `foreach()`

Executes function row-wise on workers

```python
def print_row(row):
    print(row)

df.foreach(print_row)
```

⚠️ Output prints in **worker logs**, not driver console

---

### 9️⃣ Save result → `write` Action

```python
df.write.mode("overwrite").csv("output_path")
```

Other formats: JSON, Parquet, ORC, Avro

---

## 🎯 Transformation vs Action (Interview Point)

| Transformation           | Action                         |
| ------------------------ | ------------------------------ |
| Lazy                     | Trigger execution              |
| Returns new DataFrame    | Returns result / writes output |
| Examples: select, filter | Examples: show, collect, count |

**Spark only executes when action is called** (Lazy Evaluation).

---

## ⭐ Interview Questions

1️⃣ What is lazy evaluation?
👉 Execution happens only when an Action triggers it.

2️⃣ Why is `collect()` dangerous?
👉 It loads all data to driver → memory crash.

3️⃣ Difference between `show()` and `take()`?

| show                  | take                 |
| --------------------- | -------------------- |
| Prints tabular output | Returns list of rows |
| Debugging             | Programmatic use     |

4️⃣ Difference between `foreach()` and `foreachPartition()`?

| foreach       | foreachPartition   |
| ------------- | ------------------ |
| Row by row    | Partition-level    |
| More overhead | Better performance |

---

### ✔ Quick Summary

| Action Type | Examples                      |
| ----------- | ----------------------------- |
| Display     | show(), take(), head()        |
| Aggregation | count(), reduce(), first()    |
| Output      | collect(), write(), foreach() |

---






