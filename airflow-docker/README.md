# Airflow Docker Project

## Project Structure

```
airflow-docker/
├── dags/                  # Place your Airflow DAG Python files here
│   └── my_spark_dag.py    # Example DAG file using Spark
├── spark-jobs/            # Your Spark project folder (scripts, JARs, etc.)
│   ├── my_spark_script.py
│   └── my_spark_job.jar
├── logs/                  # Airflow logs (auto-generated)
├── plugins/               # Custom Airflow plugins (optional)
├── requirements.txt       # Python dependencies for Airflow containers
└── docker-compose.yml     # Docker Compose configuration
```

## How to Run

1. **Install Docker Desktop**  
   Make sure Docker is installed and running on your system.

2. **Start Airflow Services**  
   Open a terminal in the project directory and run:
   ```sh
   docker-compose up
   ```

3. **Access Airflow UI**  
   Go to [http://localhost:8081](http://localhost:8081) in your browser.  
   Login with:
   - Username: `admin`
   - Password: `admin`

## Adding a New DAG

- Place your DAG Python file in the `dags/` folder.
- For Spark jobs, use `pyspark` or `SparkSubmitOperator` in your DAG.
- Airflow will automatically detect new DAGs—no need to restart containers.

## Adding New Python Dependencies

- Add the package to `requirements.txt`.
- Restart containers:
  ```sh
  docker-compose down
  docker-compose up --build
  ```

## Using a Spark Project Folder with Airflow

If you have a separate Spark project (with scripts, JARs, or Python files), follow these steps to use it with Airflow:

### 1. Organize Your Spark Project

Place your Spark project in a dedicated folder inside your Airflow project, for example:

```
airflow-docker/
├── dags/
│   └── my_spark_dag.py
├── spark-jobs/
│   ├── my_spark_script.py
│   └── my_spark_job.jar
...
```

### 2. Reference Spark Files in Your DAG

In your DAG file (e.g., `dags/my_spark_dag.py`), use the full path to your Spark script or JAR:

```python
from airflow.providers.apache.spark.operators.spark_submit import SparkSubmitOperator

spark_job = SparkSubmitOperator(
    task_id='run_spark_job',
    application='/opt/airflow/spark-jobs/my_spark_script.py',  # Path inside the container
    conn_id='spark_default',
    dag=dag,
)
```

### 3. Mount the Spark Project Folder in Docker

Update your `docker-compose.yml` to mount the `spark-jobs` folder:

```yaml
services:
  airflow-webserver:
    ...
    volumes:
      - ./dags:/opt/airflow/dags
      - ./spark-jobs:/opt/airflow/spark-jobs   # <-- Add this line
      ...
  airflow-scheduler:
    ...
    volumes:
      - ./dags:/opt/airflow/dags
      - ./spark-jobs:/opt/airflow/spark-jobs   # <-- Add this line
      ...
```

### 4. Restart Airflow Containers

After updating `docker-compose.yml`, restart your containers:

```sh
docker-compose down
docker-compose up --build
```

### 5. Trigger Your Spark DAG

Your DAG can now access scripts/JARs in the `spark-jobs` folder.  
Trigger the DAG from the Airflow UI.

---

**Enjoy orchestrating your workflows with Airflow and Spark!**