from pyspark.sql import SparkSession
from pyspark.sql.types import *
from pyspark.sql.functions import *

spark=SparkSession.builder.appName("demo-001").getOrCreate()

schema_df=StructType([
    StructField("name", StringType(), True),
    StructField("city", StringType(), True),
    StructField("id", IntegerType(), True)
])

data=[('navin','bhopal',23),('rohit','patna',34),('navin','indore',13)]

df=spark.createDataFrame(data=data, schema=schema_df)

df.show()
df_pt=df.repartition(1)

df_pt.write.format("csv").option("header", True).mode("append").save("file/my-file.csv")
spark.stop()

