from airflow import DAG
from airflow.providers.apache.spark.operators.spark_submit import SparkSubmitOperator
from datetime import datetime

default_args = {
    "owner": "navin",
    "start_date": datetime(2024, 1, 1),
}

with DAG(
    dag_id="spark_sample_df_dag",
    default_args=default_args,
    schedule=None,        # <── fixed for Airflow 3.x
    catchup=False,
) as dag:

    run_spark_job = SparkSubmitOperator(
        task_id="run_sample_spark_job",
        application="/home/navin/airflow-home/spark-jobs/sample.py",
        conn_id="spark_default",
        verbose=True,
    )

    run_spark_job
