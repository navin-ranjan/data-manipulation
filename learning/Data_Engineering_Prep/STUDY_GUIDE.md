# Sequential Study Guide for Data Engineering

## Overview

This guide provides a **step-by-step learning path** for Data Engineering. Follow this sequence for effective learning.

**Total Estimated Time: 14-18 weeks** (assuming 3-4 hours daily study)

---

## Phase 1: Foundation Skills (Weeks 1-6)

### Week 1-2: Python Fundamentals

| Day | Topic | Practice |
|-----|-------|----------|
| Day 1 | Variables, Data Types, Operators | HackerRank Python basics |
| Day 2 | Control Flow (if/else, loops) | Write 10 programs |
| Day 3 | Functions & Lambda | Codility practice |
| Day 4 | Lists, Tuples, Sets, Dictionaries | LeetCode easy problems |
| Day 5 | List/Dict/Set Comprehensions | Rewrite loops as comprehensions |
| Day 6 | String Manipulation | String problems on LeetCode |
| Day 7 | **Review & Practice** | Complete 5 easy problems |

| Day | Topic | Practice |
|-----|-------|----------|
| Day 8 | File Handling (read/write CSV, JSON) | Read/Write different file types |
| Day 9 | OOP - Classes & Objects | Create 3-4 classes |
| Day 10 | OOP - Inheritance & Polymorphism | Extend previous classes |
| Day 11 | Exception Handling | Add error handling to programs |
| Day 12 | Regular Expressions | Parse log files |
| Day 13 | Modules & Packages | Create your own module |
| Day 14 | **Review & Practice** | Mini project: File parser |

---

### Week 3-4: SQL Mastery

| Day | Topic | Practice |
|-----|-------|----------|
| Day 1 | SELECT, WHERE, ORDER BY | SQLZoo basics |
| Day 2 | Aggregate Functions, GROUP BY | HackerRank SQL |
| Day 3 | JOINS (INNER, LEFT, RIGHT) | LeetCode SQL Join problems |
| Day 4 | JOINS (FULL, CROSS, SELF) | Complex join scenarios |
| Day 5 | Subqueries | Nested query problems |
| Day 6 | CTEs (Common Table Expressions) | Rewrite subqueries as CTEs |
| Day 7 | **Review & Practice** | 5 SQL problems |

| Day | Topic | Practice |
|-----|-------|----------|
| Day 8 | Window Functions - ROW_NUMBER, RANK | LeetCode Window functions |
| Day 9 | Window Functions - LEAD, LAG | Time-series problems |
| Day 10 | Window Functions - Running totals | Calculate cumulative metrics |
| Day 11 | CASE WHEN, COALESCE, NULLIF | Conditional logic queries |
| Day 12 | Date Functions | Date manipulation problems |
| Day 13 | String Functions | String parsing in SQL |
| Day 14 | **Review & Practice** | 5 medium SQL problems |

| Day | Topic | Practice |
|-----|-------|----------|
| Day 15 | Normalization (1NF-3NF) | Design normalized schema |
| Day 16 | Primary/Foreign Keys, Indexes | Create table with constraints |
| Day 17 | Views (Simple, Materialized) | Create useful views |
| Day 18 | Stored Procedures (SQL Server) | Write reusable procedures |
| Day 19 | Query Optimization Basics | Analyze execution plans |
| Day 20 | Partitioning | Partition a large table |
| Day 21 | **SQL Assessment** | Complete 10 mixed problems |

---

### Week 5-6: Data Structures & Algorithms

| Day | Topic | Practice |
|-----|-------|----------|
| Day 1 | Arrays - Basics, Operations | 3 LeetCode easy |
| Day 2 | Arrays - Two Pointers | Two Sum, Move Zeros |
| Day 3 | Strings - Manipulation | Reverse, Anagram problems |
| Day 4 | Strings - Pattern Matching | Substring problems |
| Day 5 | Hash Maps - Basics | 3 LeetCode easy |
| Day 6 | Hash Maps - Frequency counting | Character frequency problems |
| Day 7 | **Review & Practice** | 5 problems |

| Day | Topic | Practice |
|-----|-------|----------|
| Day 8 | Linked Lists - Singly | Reverse, Detect cycle |
| Day 9 | Stacks - Implementation | Valid Parentheses |
| Day 10 | Queues - Implementation | Queue using Stacks |
| Day 11 | Trees - Binary Tree | Traversal problems |
| Day 12 | Trees - Binary Search Tree | Search, Insert, Validate BST |
| Day 13 | Heaps - Min/Max Heap | Top K elements |
| Day 14 | **Review & Practice** | 5 medium problems |

| Day | Topic | Practice |
|-----|-------|----------|
| Day 15 | Searching - Binary Search | 3 binary search problems |
| Day 16 | Sorting - Merge Sort, Quick Sort | Implement from scratch |
| Day 17 | Graphs - BFS, DFS | Graph traversal problems |
| Day 18 | Dynamic Programming - 1D | Fibonacci, Climbing Stairs |
| Day 19 | Dynamic Programming - 2D | Knapsack, LCS |
| Day 20 | Sliding Window | Subarray problems |
| Day 21 | **DSA Assessment** | 10 mixed problems |

---

## Phase 2: Big Data Processing (Weeks 7-10)

### Week 7-8: PySpark Fundamentals

| Day | Topic | Practice |
|-----|-------|----------|
| Day 1 | Spark Architecture Overview | Read documentation |
| Day 2 | Install PySpark, Create SparkSession | Setup local environment |
| Day 3 | RDD - Creation & Transformations | map, filter, flatMap |
| Day 4 | RDD - Actions | collect, count, reduce |
| Day 5 | RDD - Key-Value Operations | reduceByKey, groupByKey |
| Day 6 | DataFrames - Creation | Create from various sources |
| Day 7 | **Review & Practice** | RDD exercises |

| Day | Topic | Practice |
|-----|-------|----------|
| Day 8 | DataFrames - select, filter | DataFrame operations |
| Day 9 | DataFrames - groupBy, agg | Aggregation exercises |
| Day 10 | DataFrames - join | Various join types |
| Day 11 | Spark SQL - Temp Views, SQL queries | Mix SQL and DataFrame API |
| Day 12 | Built-in Functions | String, Date, Math functions |
| Day 13 | UDFs (User Defined Functions) | Create custom functions |
| Day 14 | **Review & Practice** | DataFrame exercises |

| Day | Topic | Practice |
|-----|-------|----------|
| Day 15 | Reading/Writing CSV, JSON | File I/O operations |
| Day 16 | Reading/Writing Parquet | Columnar format practice |
| Day 17 | Schema Definition | Define explicit schemas |
| Day 18 | Handling NULLs | na.drop, na.fill |
| Day 19 | Window Functions in Spark | Ranking, running totals |
| Day 20 | Partitioning & Repartitioning | Optimize data distribution |
| Day 21 | **PySpark Assessment** | Build mini ETL pipeline |

---

### Week 9-10: PySpark Advanced & Delta Lake

| Day | Topic | Practice |
|-----|-------|----------|
| Day 1 | Spark Performance - Understanding partitions | Analyze partition sizes |
| Day 2 | Caching & Persistence | Cache strategies |
| Day 3 | Broadcast Joins | Optimize small table joins |
| Day 4 | Spark UI & Debugging | Analyze job stages |
| Day 5 | Delta Lake - Introduction | Setup Delta Lake |
| Day 6 | Delta Lake - CRUD Operations | INSERT, UPDATE, DELETE |
| Day 7 | **Review & Practice** | Optimize queries |

| Day | Topic | Practice |
|-----|-------|----------|
| Day 8 | Delta Lake - Time Travel | Query historical data |
| Day 9 | Delta Lake - MERGE Operation | Upsert scenarios |
| Day 10 | Delta Lake - Vacuum & History | Cleanup old files |
| Day 11 | Delta Lake - Schema Evolution | Handle schema changes |
| Day 12 | Structured Streaming - Basics | Read streaming data |
| Day 13 | Structured Streaming - Output modes | Write streaming output |
| Day 14 | **Review & Practice** | Streaming pipeline |

---

## Phase 3: Orchestration (Weeks 11-12)

### Week 11-12: Apache Airflow

| Day | Topic | Practice |
|-----|-------|----------|
| Day 1 | Airflow Architecture | Install locally |
| Day 2 | First DAG - Basic structure | Create simple DAG |
| Day 3 | BashOperator & PythonOperator | Create tasks |
| Day 4 | Task Dependencies | Define task order |
| Day 5 | DAG Parameters | Schedule, catchup |
| Day 6 | Sensors - File, SQL | Wait for conditions |
| Day 7 | **Review & Practice** | Build 2 DAGs |

| Day | Topic | Practice |
|-----|-------|----------|
| Day 8 | XCom - Data sharing | Pass data between tasks |
| Day 9 | Branching DAGs | Conditional execution |
| Day 10 | Connections & Hooks | Connect to databases |
| Day 11 | Variables & Templates | Parameterize DAGs |
| Day 12 | TaskFlow API (@task) | Modern DAG syntax |
| Day 13 | Error Handling & Alerts | Set up notifications |
| Day 14 | **Review & Practice** | Complex DAG |

| Day | Topic | Practice |
|-----|-------|----------|
| Day 15 | Executors - Local, Celery | Understand execution |
| Day 16 | Integration - S3, PostgreSQL | External operators |
| Day 17 | Best Practices | Production-ready DAGs |
| Day 18 | Testing DAGs | Unit tests |
| Day 19 | Monitoring & Debugging | Use Airflow UI |
| Day 20 | End-to-end Pipeline | Build complete workflow |
| Day 21 | **Airflow Assessment** | Full pipeline project |

---

## Phase 4: Azure Cloud Platform (Weeks 13-18)

### Week 13: Azure Data Lake Storage (ADLS)

| Day | Topic | Practice |
|-----|-------|----------|
| Day 1 | ADLS Gen2 Overview | Create storage account |
| Day 2 | Hierarchical Namespace | Enable & explore |
| Day 3 | Containers & Folders | Organize data |
| Day 4 | Access Control - RBAC | Assign roles |
| Day 5 | Access Control - ACLs | Fine-grained permissions |
| Day 6 | Azure CLI for ADLS | CLI commands |
| Day 7 | **Review & Practice** | Upload sample data |

| Day | Topic | Practice |
|-----|-------|----------|
| Day 8 | Python SDK - azure-storage-blob | Read/Write files |
| Day 9 | Python SDK - azure-storage-file-datalake | Directory operations |
| Day 10 | PySpark + ADLS | Read from abfss:// |
| Day 11 | Data Organization | Bronze/Silver/Gold zones |
| Day 12 | Lifecycle Management | Auto-tiering policies |
| Day 13 | Security Best Practices | Managed Identity |
| Day 14 | **ADLS Assessment** | Set up data lake |

---

### Week 14-15: Azure Data Factory (ADF)

| Day | Topic | Practice |
|-----|-------|----------|
| Day 1 | ADF Overview | Create Data Factory |
| Day 2 | Linked Services | Connect to sources |
| Day 3 | Datasets | Define data structures |
| Day 4 | Pipelines - Basics | Create first pipeline |
| Day 5 | Copy Activity | Move data between sources |
| Day 6 | Integration Runtimes | Azure vs Self-hosted |
| Day 7 | **Review & Practice** | Basic pipeline |

| Day | Topic | Practice |
|-----|-------|----------|
| Day 8 | Data Flows - Source & Sink | Mapping data flows |
| Day 9 | Data Flows - Transformations | Join, Aggregate, Filter |
| Day 10 | Activities - Lookup, Get Metadata | Dynamic pipelines |
| Day 11 | Activities - ForEach, If Condition | Control flow |
| Day 12 | Parameters & Variables | Parameterize pipelines |
| Day 13 | Triggers | Schedule execution |
| Day 14 | **Review & Practice** | Complex pipeline |

| Day | Topic | Practice |
|-----|-------|----------|
| Day 15 | ADF + Databricks | Notebook activity |
| Day 16 | Debugging & Monitoring | Debug mode |
| Day 17 | CI/CD - ARM Templates | Deploy pipelines |
| Day 18 | Best Practices | Production patterns |
| Day 19 | Error Handling | Retry policies |
| Day 20 | End-to-end Pipeline | Full ETL workflow |
| Day 21 | **ADF Assessment** | Complete project |

---

### Week 16-17: Azure Databricks

| Day | Topic | Practice |
|-----|-------|----------|
| Day 1 | Databricks Overview | Create workspace |
| Day 2 | Clusters - All-purpose | Configure cluster |
| Day 3 | Notebooks - Basics | Create & run notebook |
| Day 4 | Notebooks - Languages & Magic | Python, SQL cells |
| Day 5 | Mounting ADLS | Access storage |
| Day 6 | dbutils - fs, widgets | Utility functions |
| Day 7 | **Review & Practice** | Data exploration |

| Day | Topic | Practice |
|-----|-------|----------|
| Day 8 | Delta Lake in Databricks | Create Delta tables |
| Day 9 | Delta - CRUD & MERGE | Modify data |
| Day 10 | Delta - Time Travel | Query history |
| Day 11 | Jobs - Creation & Scheduling | Run notebooks as jobs |
| Day 12 | Job Clusters vs All-purpose | Cost optimization |
| Day 13 | Notebook Workflows | %run, dbutils.notebook.run |
| Day 14 | **Review & Practice** | Delta pipeline |

| Day | Topic | Practice |
|-----|-------|----------|
| Day 15 | Unity Catalog - Basics | Setup & permissions |
| Day 16 | Unity Catalog - Tables & Views | Governed tables |
| Day 17 | Auto Loader | Incremental loading |
| Day 18 | Structured Streaming | Real-time pipeline |
| Day 19 | SQL Analytics | Queries & dashboards |
| Day 20 | Performance Tuning | OPTIMIZE, ZORDER |
| Day 21 | **Databricks Assessment** | Full project |

---

### Week 18: Azure Synapse Analytics

| Day | Topic | Practice |
|-----|-------|----------|
| Day 1 | Synapse Overview | Create workspace |
| Day 2 | Synapse Studio | Navigate interface |
| Day 3 | Dedicated SQL Pool | Create & configure |
| Day 4 | Serverless SQL Pool | Query data lake |
| Day 5 | OPENROWSET & External Tables | Query files directly |
| Day 6 | Spark Pool | Configure Spark |
| Day 7 | **Review & Practice** | Explore data |

| Day | Topic | Practice |
|-----|-------|----------|
| Day 8 | Table Distribution | Hash, Round-robin |
| Day 9 | CTAS & CETAS | Create tables |
| Day 10 | Pipelines in Synapse | Build ETL |
| Day 11 | Data Flows | Transformations |
| Day 12 | Integration with ADLS | End-to-end |
| Day 13 | Power BI Integration | Visualization |
| Day 14 | **Synapse Assessment** | Complete project |

---

## Phase 5: Integration & Projects (Ongoing)

### Capstone Project Ideas

1. **End-to-End Data Pipeline**
   - Raw data in ADLS (Bronze)
   - Process with Databricks (Silver)
   - Serve via Synapse (Gold)
   - Orchestrate with ADF/Airflow

2. **Real-time Analytics Pipeline**
   - Streaming data ingestion
   - Delta Lake for storage
   - Databricks for processing
   - Dashboard for visualization

3. **Data Warehouse Migration**
   - Legacy to Azure Synapse
   - ADF for data movement
   - Databricks for transformation

---

## Daily Study Routine

### Recommended Schedule (3-4 hours/day)

| Time Block | Activity |
|------------|----------|
| 1 hour | **Learn** - Read docs, watch tutorials |
| 1.5 hours | **Practice** - Code, solve problems |
| 0.5 hours | **Notes** - Document learnings |
| 0.5-1 hour | **Review** - Previous topics |

### Weekly Routine

| Day | Focus |
|-----|-------|
| Mon-Fri | New topics + Practice |
| Saturday | Project work / Integration |
| Sunday | Review + Assessment |

---

## Tracking Progress

### How to Use Checkboxes

In each README file, mark completed topics:

```markdown
# Before
- [ ] Window Functions

# After
- [x] Window Functions
```

### Weekly Self-Assessment

At the end of each week:
1. Can you explain the topic to someone else?
2. Can you solve problems without looking at notes?
3. Can you apply concepts in a project?

If **No** to any → Review before moving forward.

---

## Tips for Success

1. **Consistency > Intensity** - Study daily, even if less time
2. **Practice > Reading** - Code every day
3. **Projects > Tutorials** - Build real things
4. **Teach to Learn** - Explain concepts out loud
5. **Take Notes** - Write in your own words
6. **Join Communities** - Discord, Reddit, LinkedIn groups

---

## Interview Preparation Timeline

| Weeks Before Interview | Focus |
|------------------------|-------|
| 8 weeks | Review all topics |
| 6 weeks | Practice SQL & Python problems |
| 4 weeks | System design practice |
| 2 weeks | Mock interviews |
| 1 week | Quick review & confidence building |

---

Good luck with your Data Engineering journey! 🚀
