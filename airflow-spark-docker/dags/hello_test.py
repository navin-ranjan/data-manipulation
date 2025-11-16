from datetime import datetime
from airflow import DAG
from airflow.operators.python import PythonOperator

def print_message():
    print("Hello Testing")

with DAG(
    dag_id="hello_testing_dag",
    start_date=datetime(2024, 1, 1),
    schedule_interval="@once",
    catchup=False,
) as dag:

    task = PythonOperator(
        task_id="print_hello",
        python_callable=print_message
    )
