from pyspark.sql import SparkSession

def main():
    spark = SparkSession.builder.appName("LocalSparkToMinio").getOrCreate()

    # Read sample CSV from MinIO (S3 compatible)
    df = spark.read.csv("s3a://mybucket/input/sample.csv", header=True)

    # Simple transform
    df_transformed = df.withColumnRenamed("name", "full_name")

    # Write output back to MinIO (parquet)
    df_transformed.write.mode("overwrite").parquet("s3a://mybucket/output/")

    print("✔ JOB COMPLETE")


if __name__ == "__main__":
    main()
