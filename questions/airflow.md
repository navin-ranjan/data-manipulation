# Airflow Practice & Interview Preparation

This notebook covers topic-wise questions and hands-on exercises for mastering Apache Airflow, with a focus on Spark Submit and ETL pipelines.

---

## 1. Airflow Basics

### Interview Questions
1. What is Apache Airflow and why is it used?
2. Define a DAG in Airflow.
3. What is an Operator in Airflow?
4. How does Airflow execute tasks?
5. What is a Task Instance?
6. What is the role of the Airflow scheduler?
7. How does Airflow handle task dependencies?
8. What are the main components of Airflow architecture?

### Practice
- Create a DAG that prints “Hello World” using PythonOperator.
- List all available operators in Airflow using CLI or UI.
- Write a DAG with two tasks that run sequentially.
- Set up Airflow locally and start the webserver.
- Pause and unpause a DAG using the Airflow UI.

---

## 2. DAG Design & Scheduling

### Interview Questions
1. How do you define dependencies between tasks in a DAG?
2. What is the difference between `start_date` and `execution_date`?
3. How do you set a DAG to run every day at midnight?
4. What is catchup in Airflow and how does it work?
5. How do you disable catchup for a DAG?
6. What is a DAG run and how is it triggered?
7. How do you set task concurrency in Airflow?
8. What is the purpose of `schedule_interval`?

### Practice
- Write a DAG that runs every hour with three sequential tasks.
- Implement branching in a DAG using BranchPythonOperator.
- Set a DAG to run only on weekdays.
- Disable catchup for a DAG and observe the behavior.
- Set maximum active runs for a DAG.

---

## 3. Operators & Hooks

### Interview Questions
1. What is the difference between BashOperator and PythonOperator?
2. How do you use SparkSubmitOperator in Airflow?
3. What are Hooks in Airflow and why are they useful?
4. How do you pass parameters to an operator?
5. What is the role of DummyOperator?
6. How do you use EmailOperator for notifications?
7. What is the purpose of the SubDagOperator?
8. How do you create a custom operator?

### Practice
- Use BashOperator to run a shell command in a DAG.
- Use PythonOperator to execute a Python function.
- Configure SparkSubmitOperator to submit a Spark job.
- Use EmailOperator to send an email on task completion.
- Create a custom operator that logs a message.

---

## 4. Spark Submit Integration

### Interview Questions
1. How do you configure SparkSubmitOperator in Airflow?
2. What parameters can you pass to SparkSubmitOperator?
3. How do you pass arguments to your Spark job from Airflow?
4. How do you monitor Spark jobs in Airflow?
5. How do you handle Spark job failures in Airflow?
6. How do you set up Airflow to run Spark jobs on a remote cluster?
7. What is the role of Airflow connections for SparkSubmitOperator?
8. How do you pass environment variables to Spark jobs?

### Practice
- Write a DAG that submits a Spark job using SparkSubmitOperator.
- Pass dynamic parameters to your Spark job from Airflow.
- Set up a connection for Spark in Airflow.
- Monitor Spark job logs in Airflow UI.
- Handle Spark job failures with retries and notifications.

---

## 5. ETL Pipelines in Airflow

### Interview Questions
1. How do you design an ETL pipeline in Airflow?
2. How do you handle data dependencies between tasks?
3. What is XCom and how is it used in ETL?
4. How do you pass data between tasks in Airflow?
5. How do you orchestrate extract, transform, and load steps?
6. How do you handle large data volumes in Airflow ETL?
7. How do you schedule ETL jobs in Airflow?
8. How do you monitor ETL pipelines in Airflow?

### Practice
- Build a DAG with extract, transform, and load tasks.
- Use XCom to pass data between extract and transform tasks.
- Implement a simple ETL pipeline using PythonOperator.
- Set up notifications for ETL pipeline failures.
- Schedule an ETL pipeline to run daily.

---

## 6. Error Handling & Retry

### Interview Questions
1. How do you set retries for a task in Airflow?
2. How do you handle task failures in Airflow?
3. What is the difference between `on_failure_callback` and `on_success_callback`?
4. How do you set a timeout for a task?
5. How do you configure alerting for failed tasks?
6. How do you skip tasks on failure?
7. What is the role of `depends_on_past` in error handling?
8. How do you use Airflow’s SLA feature?

### Practice
- Set up a DAG with retries and exponential backoff.
- Implement custom callbacks for task success and failure.
- Set a timeout for a long-running task.
- Configure email alerts for failed tasks.
- Use `depends_on_past` to prevent running a task if the previous run failed.

---

## 7. Airflow UI & Monitoring

### Interview Questions
1. How do you monitor DAG runs in Airflow UI?
2. What information can you see in the Airflow UI?
3. How do you trigger a DAG manually?
4. How do you view logs for a failed task?
5. How do you clear a failed task instance?
6. How do you pause and unpause a DAG?
7. How do you check the status of a DAG run?
8. How do you use Airflow CLI for monitoring?

### Practice
- Explore the Airflow UI and trigger a DAG run.
- View logs for a failed task in the UI.
- Clear a failed task and rerun it.
- Pause and unpause a DAG from the UI.
- Use Airflow CLI to list DAGs and task instances.

---

## 8. Airflow Configuration & Deployment

### Interview Questions
1. How do you configure Airflow connections?
2. What is the role of the Airflow scheduler and worker?
3. How do you deploy Airflow DAGs in production?
4. How do you set up Airflow on a cloud platform?
5. How do you manage Airflow secrets and credentials?
6. How do you scale Airflow for large workloads?
7. How do you upgrade Airflow to a new version?
8. How do you back up and restore Airflow metadata?

### Practice
- Set up a connection for Spark in Airflow.
- Deploy a new DAG to your Airflow instance.
- Configure Airflow to use a remote database for metadata.
- Set up Airflow on a cloud platform (e.g., AWS, GCP).
- Upgrade Airflow and verify DAG compatibility.

---

## 9. Advanced Topics

### Interview Questions
1. What are Sensors in Airflow and how do you use them?
2. How do you use SubDAGs in Airflow?
3. How do you implement dynamic DAGs?
4. What is the role of Airflow Plugins?
5. How do you use Airflow REST API?
6. How do you manage DAG versioning?
7. How do you implement task mapping in Airflow?
8. How do you use Airflow with KubernetesExecutor?

### Practice
- Use a FileSensor to wait for a file before running a task.
- Create a dynamic DAG based on a list of files.
- Implement a SubDAG for a reusable workflow.
- Develop a custom Airflow plugin.
- Use Airflow REST API to trigger a