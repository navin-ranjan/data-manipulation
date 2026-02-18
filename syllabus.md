# Azure Data Engineer Study Syllabus

This syllabus is designed to take you from foundational skills to advanced Azure Data Engineering concepts. Follow the sequence for optimal learning.

---

## Phase 1: Foundation Skills

### 1. Linux & Shell Basics
- **Filesystem**: `/`, `/home`, `/var`, `/etc`, `/tmp`, absolute & relative paths
- **Inode**, symbolic links vs hard links, mount points, disk usage
- **Essential Commands**: `ls`, `cd`, `pwd`, `cp`, `mv`, `rm`, `mkdir`, `touch`, `stat`, `file`, `find`, `locate`, `which`, `du`, `df`
- **Permissions**: `rwx`, `chmod`, `chown`, `chgrp`, `umask`, `sudo`, setuid/setgid
- **Processes**: `ps`, `top`, `htop`, `kill`, `pkill`, `nohup`, `bg`, `fg`, `jobs`, `nice`
- **Text Processing**: `grep`, `vi`, `vim`, `awk` (column processing), `sed` (stream editor), `cut`, `sort`, `uniq`, `wc`
- **Networking Tools**: `curl`, `wget`, `ping`, `netstat`, `ss`, `traceroute`, `nc`
- **JSON Tools**: `jq`
- **Shell Scripting**: bash/zsh, variables, pipes, redirection, subshells, cron, environment variables

### 2. Version Control with Git
- **Core Commands**: `init`, `clone`, `add`, `commit`, `status`, `diff`, `log`
- **Branching**: feature branches, main/master, release branches
- **Merging**: merge commit, fast-forward, conflict resolution
- **Rebasing**: interactive rebase, squash, reword
- **Advanced**: commit messages, `cherry-pick`, `stash`, `bisect`, `reflog`

### 3. Networking & Backend Fundamentals
- **TCP/IP**: OSI model, ports, sockets, handshake, latency
- **DNS**: A/AAAA/CNAME records, resolution flow, TTL
- **HTTP**: methods (GET, POST, PUT, DELETE, PATCH), headers, status codes, cookies, caching
- **HTTPS + TLS**: certificates, public/private keys, handshake, CA
- **REST**: resources, idempotency, pagination, authentication, rate limiting

---

## Phase 2: Programming & Data Skills

### 4. Python Fundamentals
- **Environment Setup**: venv, pip, requirement.txt
- **Basic Concepts**: Interpreted, Script, Variables, Datatypes, Operators, Type Cast
- **Control Flow**: if/else, nested if else, for, while, range, break, continue, slice
- **Data Structures**: list, dict, set, tuple
- **Functions**: `def`, `*args`, `**kwargs`, Lambda, Map, Filter, Reduce
- **Exception Handling**: try, except, Exception, finally, raise
- **OOPs**: Class, Self, Objects, Constructor, @staticmethod, @classmethod, super(), inheritance types
- **Multithreading**: Concurrent, ThreadPoolExecutor
- **APIs**: requests library, GET/POST, JSON response, metadata
- **File I/O**: CSV, JSON, Parquet
- **Logging**: logging module, log levels, handlers
- **Packaging**: setup.py, pyproject.toml, wheels

### 5. SQL Essentials
- **Core SQL**:
  - DDL: CREATE, ALTER, DROP, TRUNCATE
  - DML: INSERT, UPDATE, DELETE
  - Constraints & Keys
  - Basic SQL: Data types, Operators (AND, OR, BETWEEN)
  - DQL: SELECT, WHERE, LIKE, GROUP BY, HAVING, ORDER BY, LIMIT
  - Aggregate Functions: count, sum, avg, min/max
  - SQL Execution Flow
  - Joins: Inner, Left, Right, Full
  - Conditional: CASE WHEN -> THEN -> ELSE -> END
- **Transformations**:
  - Numeric: ROUND, Percentage
  - Date: now, year, MONTH, DAY, WEEKDAY, DAYNAME, DATEDIFF, ADDDATE, SUBDATE, date_format
  - Cast: datetime, CHAR, int
  - String: CONCAT, CONCAT_WS, LENGTH, LOWER, substring, REPLACE, LEFT, RIGHT, REVERSE, REPEAT
- **Advanced SQL**:
  - Window Functions: ROW_NUMBER, RANK, DENSE_RANK
  - SubQueries
  - CTEs (Common Table Expressions)
  - LAG/LEAD
  - Views
  - Stored Procedures
  - Functions

### 6. Data Modeling
- **OLTP vs OLAP**
- **Normalization**: 1NF, 2NF, 3NF
- **Dimensional Modeling**: Fact tables, Dimension tables
- **Star Schema**
- **Snowflake Schema**
- **Slowly Changing Dimensions**: Type 0-6

### 7. Storage & Data Formats
- **Data Formats**: CSV, JSON, Parquet, Avro, ORC
- **Core Concepts**:
  - Row vs Columnar storage
  - Compression: snappy, gzip, zstd, tar
  - Schema evolution
  - Partitioning

---

## Phase 3: Big Data Processing

### 8. Apache Spark
- **Architecture**: Driver, Executors, DAG
- **DataFrame API**
- **Lazy Evaluation**
- **Partitions**
- **Joins & Shuffles**
- **Cache/Persist**
- **Spark SQL**
- **UDFs**
- **Streaming Basics**:
  - Event vs Micro-batch
  - Event time vs Processing time
  - Windows, Watermarks
  - Exactly-once semantics

### 9. Apache Kafka
- **Brokers**
- **Topics**
- **Partitions**
- **Offsets**
- **Consumer Groups**
- **Retention**
- **Schema Registry**

### 10. Data Structures & Algorithms (Basic)
- **Time & Space Complexity**
- **Arrays**

---

## Phase 4: Orchestration & Data Engineering

### 11. Workflow Orchestration - Apache Airflow
- **DAGs**
- **Operators**
- **Sensors**
- **Retries**
- **Backfills**
- **SLAs**

### 12. Data Warehousing
- **Column Stores**
- **ELT**
- **Materialized Views**
- **Query Tuning**

### 13. Lakehouse Architecture
- **Delta Lake**
- **ACID on Files**
- **Bronze/Silver/Gold Layers**
- **Compaction**
- **Vacuum**

### 14. Data Quality & Security
- **Data Quality**: Great Expectations, validation rules, contracts
- **Catalog & Lineage**: Metadata, lineage, PII tagging
- **Security**: IAM, secrets, encryption, key rotation, VPC

### 15. DataOps
- **CI/CD**
- **Logging**
- **Metrics**
- **Alerts**

---

## Phase 5: Azure Cloud Fundamentals

### 16. Cloud Computing Basics
- **What is Cloud?**
- **Deployment Models**: Private, Public, Hybrid
- **Service Models**: IaaS, PaaS, SaaS
- **Cloud Platforms**: Azure, AWS, GCP

### 17. Azure Core Services
- **Introduction to Azure**
- **Azure Portal Overview**
- **Subscriptions**
- **Resource Groups**
- **Resources**
- **Key Services**:
  - Azure Data Factory
  - Azure Databricks
  - Blob Storage / Data Lake Storage Gen1 & Gen2
  - Azure SQL Server / SQL Database
  - Key Vault
  - Function App
  - Logic Apps

### 18. Azure Storage
- **Storage Account Types**
- **Blob Storage**
- **Access Tiers**
- **Data Replication Policies**
- **Azure Data Lake Storage Gen2**

### 19. Azure Key Vault
- **Introduction to Key Vault**
- **Keys, Secrets, Certificates**
- **Creating and Configuring Key Vault**

---

## Phase 6: Azure Data Factory

### 20. Azure Data Factory Fundamentals
- **What is ADF?**
- **Architecture**
- **Top-Level Concepts**:
  - Pipelines
  - Activities
  - Linked Services
  - Datasets
  - Triggers
  - Data Flows
  - Integration Runtimes

### 21. Pipeline Development
- **Creating Pipelines**
- **Organizing into Folders**
- **Debug & Publish**
- **Parameters**

### 22. Linked Services
- **Creating Linked Services**: Blob, SQL Database, SQL Server, ADLS Gen1, ADLS Gen2
- **Parameterization**

### 23. Datasets
- **Creating Datasets**: Avro, Binary, CSV, Excel, JSON, ORC, Parquet, XML
- **SQL Database Tables**
- **Parameterization**

### 24. Activities
- **Basic Activities**: Wait, Variables
- **Copy Data Activity**: Source, Sink, Mapping, Settings
- **File Operations**: Copy between containers, folders, recursively
- **Data Transformations**: Databricks Notebook, Azure Function
- **Control Activities**: Lookup, Stored Procedure, Get Metadata, Delete
- **Iteration & Conditionals**: Filter, ForEach, If Condition, Switch, Until

### 25. Triggers
- **Schedule Trigger**
- **Tumbling Window Trigger**
- **Storage Event Trigger**
- **Trigger with Parameters**

### 26. Integration Runtime
- **Azure AutoResolveIntegrationRuntime**
- **Azure Managed Virtual Network**
- **Self-Hosted IR**
- **Linked Self-Hosted IR**

### 27. Data Flows
- **Mapping Data Flow**
- **Debug Mode**
- **Transformations**:
  - Filter, Aggregate, Join
  - Conditional Split, Derived Column
  - Exists, Union, Lookup, Sort
  - GroupBy, Pivot, Unpivot, Flatten
  - Parse, Stringify
  - Alter Row
- **Schema Drift & Validation**

### 28. ADF Best Practices
- **Source Control**: Git configuration
- **ARM Templates**: Export/Import
- **Azure DevOps Repos**
- **Global Parameters**
- **Credentials**
- **Monitoring & Alerts**
- **Failure Notifications via Logic Apps**

---

## Phase 7: Azure Databricks

### 29. Big Data & Hadoop Fundamentals
- **Big Data Concepts**: Data, Database, Big Data challenges
- **Hadoop**: Architecture, HDFS, YARN, MapReduce

### 30. Apache Spark Deep Dive
- **Spark Architecture**
- **Spark Internals**
- **RDD Programming**
- **DataFrames**
- **Spark Streaming**

### 31. Databricks Basics
- **What is Databricks?**
- **Architecture**
- **Workspace & Notebooks**
- **DBFS (Databricks File System)**:
  - Commands: mkdirs, cp, mv, head, put, rm, rmdir
  - File handling and processing

### 32. Spark Core in Databricks
- **RDD Operations**: Transformations (Narrow/Wide), Actions
- **Loading & Saving Data**
- **Key-Value Pair RDD**
- **Broadcast Variables**

### 33. Spark SQL & DataFrames
- **Creating DataFrames**
- **Internal Execution**
- **Transformations & Actions**
- **UDFs**

### 34. File Formats
- **CSV, JSON, Parquet, Excel, ORC**

### 35. Databricks Utilities
- **Credentials Utility**
- **FileSystem Utility**
- **Notebook Utility**
- **Secrets Utility**
- **Widgets Utility**

### 36. Cluster Management
- **Creating & Managing Clusters**
- **Cluster Types**: All-purpose, Job clusters
- **Cluster Modes**: Standard, High Concurrency
- **Autoscaling**
- **Runtime Versions**
- **Logs & Monitoring**

### 37. Batch Processing
- **Historical & Incremental Loads**
- **Date Transformations**
- **Aggregations & Joins**
- **Window Functions**
- **Union Operations**

### 38. Azure Integration
- **Blob Storage**
- **ADLS Gen2**
- **Azure SQL Database**
- **Synapse**
- **Key Vault**

### 39. Streaming with Databricks
- **Streaming Concepts**
- **PySpark Streaming**
- **Handling Bad Records**
- **Streaming to Gen2 Lake**
- **Loading to Tables**

### 40. Delta Lake & Lakehouse
- **Data Lake vs Delta Lake**
- **Delta Lake Features**
- **Creating Delta Tables**
- **DML Operations**
- **Merge Statements**
- **SCD Type 1 & Type 2**
- **Deduplication**
- **Streaming Data**

### 41. Medallion Architecture
- **Bronze Layer** (Raw Data)
- **Silver Layer** (Cleansed & Transformed)
- **Gold Layer** (Curated, Business-Ready)

### 42. Databricks Workflows
- **Creating & Managing Jobs**
- **Scheduling**
- **Monitoring**

---

## Phase 8: Azure Synapse Analytics

### 43. Synapse Overview
- **Architecture**
- **Workspace Creation**

### 44. Synapse Pools
- **Dedicated SQL Pools**
- **Serverless SQL Pools**
- **Apache Spark Pools**
- **Data Explorer Pools**

### 45. Querying Data Lake
- **Serverless SQL Pool Queries**
- **Creating Views for CSV Data**

### 46. Storage Integration
- **Copy Activities**: Blob to Blob with wildcards
- **Dynamic File/Folder Handling**
- **Latest File Copy**

### 47. Triggers
- **Schedule Trigger**
- **Event-Based Trigger**

### 48. Azure SQL Database Integration
- **Copy from SQL Database**: Table, Query, Stored Procedure
- **Overwrite & Append Modes**

### 49. Incremental Loading
- **Delta Load from SQL to Blob**
- **Multi-Table Incremental Load**
- **Changed Files Based on Last Modified Date**

### 50. Monitoring & Notifications
- **Pipeline Logging to SQL**
- **Email Notifications**
- **Error Notifications via Logic Apps**

### 51. Copy Activity Deep Dive
- **On-Premise SQL Server to Synapse**
- **Polybase & Bulk Insert**
- **File System to Synapse**
- **REST API to ADLS Gen2**

### 52. Data Flows in Synapse
- **Joins vs Lookup**
- **Transformations**: Select, Filter, Join, Union, Lookup, Window, Pivot, Unpivot, Alter Row, Remove Duplicates

### 53. Spark Pool in Synapse
- **Notebook Creation**
- **MSSparkUtils**: File system, Parameters
- **Magic Commands**
- **Key Vault Integration**
- **Connecting to ADLS Gen2, Blob, Azure SQL, On-Premise SQL**

### 54. File Format Handling
- **CSV, Parquet, JSON, Avro, ORC, Excel**
- **RDD & DataFrame Creation**
- **Repartition & Coalesce**
- **Joins & Broadcast Joins**
- **Catalyst Optimizer & Skewness**
- **Pyspark Optimization**

### 55. SCD Implementation
- **SCD Type 1**
- **SCD Type 2**

### 56. Pipeline Integration
- **Notebook Execution with Parameters**

---

## Phase 9: Microsoft Fabric

### 57. Fabric Overview
- **What is Microsoft Fabric?**
- **Enabling Fabric**
- **Workspace Structure**
- **Advantages**

### 58. Fabric Components
- **OneLake**
- **Real-time Intelligence**
- **Data Factory**
- **Data Science**
- **Data Engineering**
- **Data Activator**
- **Data Warehouse**
- **Power BI**

### 59. OneLake Concepts
- **Unified Storage**
- **Logical Data Organization**
- **Delta Tables & Open Formats**
- **Shortcuts**
- **Security & Access Control**
- **Performance & Cost**

### 60. Data Factory in Fabric
- **Pipeline Activities & Dataflows**
- **Connectivity & Ingestion**
- **Transformation & Orchestration**

### 61. Lakehouse
- **Architecture**
- **Creating Lakehouse**
- **Uploading Files**
- **DevOps Repos**

### 62. Notebooks
- **Creating & Running Notebooks**
- **Python & SQL**
- **Visualizations**
- **Source Control**

### 63. Apache Spark in Fabric
- **Architecture**
- **DataFrames & Spark SQL**
- **Transformations & Actions**
- **UDFs**

### 64. Delta Lake Tables
- **Creating Delta Tables**
- **SCD Type 1 & Type 2**
- **Time Travel & Versioning**
- **Medallion Architecture**
- **V-Order**

### 65. Data Warehouse
- **Fundamentals**
- **SQL Endpoints**
- **Security & Monitoring**
- **Copy from Lakehouse**

### 66. Real-time Intelligence
- **Event Streams**
- **KQL Databases**
- **Kusto Query Language (KQL)**

### 67. Activators
- **Tracking Data**
- **Rules & Objects**
- **EventStream Integration**

### 68. Power BI Integration
- **Connecting Fabric with Power BI**
- **Dashboards & Reports**
- **OneLake Connections**
- **Desktop & Cloud**

### 69. DevOps & SDLC
- **Fabric with Azure DevOps Repos**
- **Deployment Pipelines**
- **Agile Methodology**

---

## Phase 10: Practical Exercises & Projects

### 70. ADF Exercises
1. Variables & Set Variable Activity
2. If Condition Activity
3. ForEach Loop for Files
4. Linked Services & Datasets
5. Copy: Blob to Blob
6. Copy: Blob to Azure SQL
7. Copy: Pattern Matching
8. Copy: Filtered File Formats
9. Copy: Multiple Files
10. Delete Source After Copy
11. Parameterized Datasets
12. Format Conversion
13. Add Additional Columns
14. GetMetadata Activity
15. Bulk Copy Tables
16. Key Vault Integration
17. Integration Runtime Setup
18. On-Premise to Cloud
19. Databricks Activity with Parameters
20. Schedule Trigger
21. Tumbling Window Trigger
22. Event-Based Trigger
23. Until Activity
24. Data Flow Transformations
25. Pipeline Parameters
26. Alerts & Monitoring
27. ARM Templates Import/Export
28. ADF with DevOps
29. Email Notifications via Logic Apps
30. Pipeline Debugging

---

## Key Focus Areas for Azure Data Engineer Certification

- Azure Data Factory (ADF)
- Azure Databricks
- Azure Synapse Analytics
- Azure Storage (Blob, ADLS Gen2)
- Azure Key Vault
- Delta Lake / Lakehouse Architecture
- Data Ingestion & Transformation
- Data Pipelines & Orchestration

---

*Last Updated: 2026-02-17*
