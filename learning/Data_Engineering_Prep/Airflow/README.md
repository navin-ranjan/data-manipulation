# Apache Airflow

## Airflow Fundamentals
- [ ] What is Airflow?
- [ ] DAGs (Directed Acyclic Graphs)
- [ ] Tasks & Operators
- [ ] Task Dependencies
- [ ] Airflow Architecture (Web Server, Scheduler, Executor, Worker)
- [ ] Metadata Database

## Installation & Setup
- [ ] Installing Airflow (pip, Docker)
- [ ] Configuration (airflow.cfg)
- [ ] Environment Variables
- [ ] Using Docker Compose for Airflow

## DAGs (Directed Acyclic Graphs)
- [ ] Creating a DAG
- [ ] DAG Parameters (start_date, schedule_interval, catchup)
- [ ] DAG Context Managers
- [ ] Task Dependencies (>> , << operators)
- [ ] Branching in DAGs
- [ ] Dynamic DAG Generation
- [ ] DAG Documentation

## Operators
- [ ] BashOperator
- [ ] PythonOperator
- [ ] EmailOperator
- [ ] DummyOperator
- [ ] BranchPythonOperator
- [ ] ShortCircuitOperator
- [ ] Sensor Operators

## Sensors
- [ ] What are Sensors?
- [ ] SqlSensor
- [ ] FileSensor
- [ ] S3KeySensor / GCSObjectExistenceSensor
- [ ] DateTimeSensor
- [ ] ExternalTaskSensor
- [ ] poke vs reschedule mode

## XCom (Cross-Communication)
- [ ] What is XCom?
- [ ] Pushing Data to XCom
- [ ] Pulling Data from XCom
- [ ] XCom Limitations
- [ ] Best Practices

## TaskFlow API (Airflow 2.x)
- [ ] @task decorator
- [ ] @task.python
- [ ] @task.bash
- [ ] Data passing between tasks
- [ ] Dependency inference

## Connections & Hooks
- [ ] Managing Connections (UI, CLI, Environment)
- [ ] Connection Types (PostgreSQL, MySQL, S3, etc.)
- [ ] Hooks (BaseHook, PostgresHook, S3Hook)
- [ ] Custom Connections

## Executors
- [ ] SequentialExecutor
- [ ] LocalExecutor
- [ ] CeleryExecutor
- [ ] KubernetesExecutor
- [ ] Choosing the Right Executor

## Variables & Configuration
- [ ] Airflow Variables
- [ ] Jinja Templating
- [ ] Macros
- [ ] Configuration via Environment Variables

## Scheduling & Triggers
- [ ] Cron Expressions
- [ ] Timetables
- [ ] Manual Triggers
- [ ] Backfilling
- [ ] Trigger Rules (all_success, one_failed, etc.)

## Best Practices
- [ ] DAG Design Patterns
- [ ] Idempotency
- [ ] Error Handling
- [ ] Monitoring & Alerts
- [ ] Logging
- [ ] Testing DAGs

## Security
- [ ] Authentication (LDAP, OAuth, etc.)
- [ ] Authorization (RBAC)
- [ ] Securing Connections
- [ ] Secrets Backend

## Airflow with Cloud Services
- [ ] AWS (S3, Redshift, EMR)
- [ ] Azure (Blob Storage, Data Factory integration)
- [ ] GCP (BigQuery, GCS)

## Monitoring & Observability
- [ ] Airflow UI Navigation
- [ ] Task Logs
- [ ] Email Notifications
- [ ] Slack Integration
- [ ] Prometheus & Grafana

## Useful Resources
- Official Documentation: https://airflow.apache.org/docs/
- Astronomer Guides: https://www.astronomer.io/guides/
- Airflow Cookbook: https://github.com/apache/airflow/tree/main/docs
