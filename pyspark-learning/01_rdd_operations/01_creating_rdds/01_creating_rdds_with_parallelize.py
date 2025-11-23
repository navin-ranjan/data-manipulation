# You can create an RDD by parallelizing an existing list or collection in your driver
# program. This method uses the parallelize() function of the Spark context.

from pyspark import SparkContext

sc = SparkContext("local", "ParallelizeExample")

#Creating RDD using Python variable
data = [1, 2, 3, 4, 5]

print(type(data))

rdd = sc.parallelize(data)


print(type(rdd))
print(rdd.collect())

