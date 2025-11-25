from pyspark.sql import SparkSession

# Create a SparkSession (or use an existing one)
spark = SparkSession.builder.appName("MySparkApp").getOrCreate()

# Get all configurations
all_configs = spark.sparkContext.getConf().getAll()

print("All Spark Configurations:")
for key, value in all_configs:
    print(f"{key}: {value}")
# Stop the SparkSession
spark.stop()