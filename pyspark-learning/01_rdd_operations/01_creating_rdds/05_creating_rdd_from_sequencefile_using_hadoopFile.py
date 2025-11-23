from pyspark import SparkContext

sc = SparkContext("local", "SequenceFileExample")

# Read a sequence file
rdd = sc.hadoopFile("pyspark-learning/01_rdd_operations/01_creating_rdds/data/movies_sequence",
                    "org.apache.hadoop.mapred.SequenceFileInputFormat",
                    "org.apache.hadoop.io.Text",
                    "org.apache.hadoop.io.IntWritable")


print(rdd.collect())

# Convert RDD to display as tuples
# Convert RDD values to tuple of (key, value)
result = rdd.map(lambda x: (str(x[0]), x[1]))

print(result.collect())
