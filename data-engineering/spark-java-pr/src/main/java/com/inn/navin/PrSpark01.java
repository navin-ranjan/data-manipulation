package com.inn.navin;

import org.apache.spark.sql.SparkSession;

/**
 * Hello world!
 *
 */
public class PrSpark01 
{
    public static void main( String[] args )
    {
        
        SparkSession sparkSession= SparkSession.builder().appName("this is app").master("local").getOrCreate();
        System.out.println(sparkSession.sparkContext().getConf().getAll());
    }
}
