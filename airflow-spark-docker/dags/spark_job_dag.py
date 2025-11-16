from airflow import DAG
from airflow.providers.apache.spark.operators.spark_submit import SparkSubmitOperator
from datetime import datetime

with DAG(
    dag_id="spark_minio_pipeline",
    start_date=datetime(2024, 1, 1),
    schedule_interval="@once",
    catchup=False,
) as dag:
    SparkSubmitOperator(
        task_id="run_spark_job",
        application="/opt/spark-apps/jobs/sample_spark_job.py",
        conn_id="spark_default",
    )
