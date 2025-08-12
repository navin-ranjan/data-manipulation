from airflow import DAG
from airflow.operators.bash import BashOperator
from datetime import datetime

with DAG('hello_dag', start_date=datetime(2024, 1, 1), schedule_interval=None, catchup=False) as dag:
    task1 = BashOperator(
        task_id='say_hello',
        bash_command='echo "Hello Airflow!"'
    )

