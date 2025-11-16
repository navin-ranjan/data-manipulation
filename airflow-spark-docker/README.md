# Local Data Engineering Development Kit

This repository contains a lightweight local data engineering setup: Spark (standalone), MinIO, Kafka (optional) and Airflow — all managed by Docker compose. Edit code locally (PyCharm) and run jobs via `spark-submit` or Airflow DAGs.

## Quick Start

### 1. Start services:

```powershell
make up
```

### 2. Open services:

- **Airflow**: http://localhost:8080  (login: `admin` / `admin`)
- **MinIO console**: http://localhost:9001  (user: `minio`, pass: `password123`)
- **Spark UI**: http://localhost:8081

### 3. Create bucket in MinIO and upload sample data:

- Go to MinIO console (http://localhost:9001)
- Create bucket: `mybucket`
- Upload `data/input/sample.csv` to `input/sample.csv`

### 4. Add Airflow Connection for Spark:

- Go to Airflow UI (http://localhost:8080)
- Admin → Connections → + Add
- Fill in:
  - **Conn ID**: `spark_default`
  - **Conn Type**: `Spark`
  - **Master URL**: `spark://spark-master:7077`
- Save

## Run Jobs Locally (without Airflow):

If you have local PySpark installed:

```powershell
spark-submit src/jobs/sample_spark_job.py
```

## Common Commands

```powershell
make up          # Start all services
make down        # Stop all services
make ps          # Check status
make logs        # View logs
make restart     # Restart services
make rebuild     # Rebuild from scratch
```

## Architecture

| Component          | Container | Volume Mount        |
| ------------------ | ---------- | ------------------- |
| Spark Master       | Yes        | `./src:/opt/spark-apps` |
| Spark Worker       | Yes        | Same as master      |
| MinIO              | Yes        | `./data:/data`      |
| Kafka + Zookeeper  | Yes        | N/A                 |
| Airflow            | Yes        | `./dags:/opt/airflow/dags` |

## Notes

- Edit code in `src/` and changes reflect instantly in Spark & Airflow (shared volumes).
- If running on Windows without `make`, use direct Docker commands:
  ```powershell
  docker compose up -d
  docker compose logs -f
  docker compose down
  ```

## Project Structure

```
data-engineering-kit/
├── docker-compose.yml       # Service definitions
├── Makefile                 # Quick commands
├── requirements.txt         # Python dependencies
├── src/
│   ├── jobs/
│   │   └── sample_spark_job.py
│   └── utils/
│       └── helper.py
├── dags/
│   └── spark_job_dag.py
├── config/
│   └── spark-defaults.conf
└── data/
    └── input/
        └── sample.csv
```

## Next Steps

- Modify `src/jobs/sample_spark_job.py` for your data pipelines
- Add more DAGs to `dags/` folder
- Mount additional data sources
- Enable Streaming with Kafka (optional)
