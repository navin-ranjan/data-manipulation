from pyspark.sql import SparkSession
from pyspark.sql.functions import st

def run():
    spark = SparkSession.builder \
        .appName("SampleDataFrameJob") \
        .getOrCreate()
    
    data = [
        ("Navin", 28),
        ("Ranjan", 30),
        ("Kumar", 35)
    ]

    df = spark.createDataFrame(data, ["name", "age"])

    print("\n===== SAMPLE DATAFRAME =====")
    df.show()

    spark.stop()


if __name__ == "__main__":
    run()
