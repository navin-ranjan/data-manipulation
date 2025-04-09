from pyspark.sql import SparkSession

spark = SparkSession.builder \
    .appName("CassandraExample") \
    .config("spark.jars.packages", "com.datastax.spark:spark-cassandra-connector_2.12:3.4.1") \
    .config("spark.cassandra.connection.host", "127.0.0.1") \
    .config("spark.cassandra.connection.port", "9042") \
    .config("spark.cassandra.connection.localDC", "datacenter1") \
    .config("spark.cassandra.auth.username", "cassandra") \
    .config("spark.cassandra.auth.password", "cassandra") \
    .config("spark.cassandra.connection.ssl.enabled", "false") \
    .config("spark.sql.catalog.ybcatalog", "com.datastax.spark.connector.datasource.CassandraCatalog") \
    .getOrCreate()

# Print the value of spark.jars configuration
print(spark.conf.get("spark.jars"))

# Now you can read from Cassandra
df = spark.read \
    .format("org.apache.spark.sql.cassandra") \
    .options(table="local", keyspace="ybcatalog.system") \
    .load()

df.show()
