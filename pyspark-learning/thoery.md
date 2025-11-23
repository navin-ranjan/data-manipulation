

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

If you want, next I can prepare:

### **➡ RDD Transformations Part-2:**

* flatMap()
* filter()
* union()
* intersection()
* distinct()

Just tell me **“Next”**.

