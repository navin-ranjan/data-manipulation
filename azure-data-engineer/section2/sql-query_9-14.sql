-- use database---
USE adventureworks

-- select data from table 
SELECT * from product; 

-- get unique value of table column
SELECT DISTINCT color from product

-- get unique of multiple column
SELECT DISTINCT color, listPrice from product

-- get all column unique
SELECT DISTINCT * from product

------------------------# Sort Data -------------------------------------------
-- sort column data by Asc order
SELECT `Name` FROM product
ORDER BY `Name`     --# DEFAULT ASC

-- sort by data desc order
SELECT `Name` FROM product
ORDER BY `Name` DESC

-- sort multiple column
SELECT ProductID, `Color`, NAME, ProductNumber 
FROM product
ORDER BY `Name`, color, `ProductNumber` ASC

-- order by table sequence number
SELECT ProductID, `Color`, NAME, ProductNumber 
FROM product
ORDER BY 1 DESC

-- order by table mutiple sequesnce number
SELECT ProductID, `Color`, NAME, ProductNumber 
FROM product
ORDER BY 2, 3

---------------------------# Filter Data ------------------------------
/*
# comparision operater
    =, >, >=, <, <=, <>
# Keyword
    WHERE, AND, OR, IN, BETWEEN
*/

-- filter data by column =
SELECT * from product
WHERE `ListPrice` = 147.14

-- filter data by color = red or silver
SELECT * from product
WHERE `Color`='red' OR `Color`='silver'

-- filter data by color and order by color
SELECT * FROM product
WHERE `Color` = 'red' OR `Color`='silver' OR `Color`= 'white'
ORDER BY `Color` ASC

-- filter by IN keyword
SELECT * FROM product
WHERE `Color` IN('red', 'silver', 'white')
ORDER BY `Color` DESC

-- filter by AND keyword
SELECT * FROM product
WHERE `Color` IN('red', 'silver', 'white') AND `ListPrice` >500
ORDER BY `ListPrice`

-- filter by >=, <= opeartor
SELECT * FROM product
WHERE `ListPrice` >= 200 AND `ListPrice` <= 1000
ORDER BY `ListPrice`

-- filter by BETWEEN keyword
SELECT * FROM product
WHERE `ListPrice` BETWEEN 200 AND 1000
ORDER BY `ListPrice`

---------------------# Filter with Wild Character/ pattern based ------------------------
/*
# Keyword
    LIKE
# Wild Character
    % - any number of unknown chars
    _ - one unknow chars
*/

-- filter pattern start with al
SELECT * FROM product
WHERE `Name` LIKE 'al%'

-- filter pattern end with ce
SELECT * FROM product
WHERE `Name` LIKE '%ce'

-- filter pattern with word 'road'
SELECT * FROM product
WHERE `Name` LIKE '%road%'

-- filter patter with word 'r_d'
SELECT * FROM product
WHERE `Name` LIKE '%r_d%'

---------------------# Aggregate Funtions ------------------------
/*
# Functions
    SUM, AVG, MIN, MAX, COUNT
# Keyword
    AS, IS NULL, NOT NULL
*/

-- find total sum of column
SELECT SUM(`UnitPrice`) AS total_sum 
FROM  salesorderdetail

-- find the avarage of column
SELECT AVG(Unitprice) as total_avg
From salesorderdetail

-- find the sum and avarage of colomn
SELECT SUM(UnitPrice) as total_sum, AVG(Unitprice) as total_avg
From salesorderdetail

-- find min and max value of column
SELECT MIN(UnitPrice) as min_value, MAX(UnitPrice) as max_value 
FROM salesorderdetail

-- count the total row of column
SELECT COUNT( `Color`) as num_raw 
FROM product   -- return 256 without NULL

SELECT COUNT(*) from product -- return 504  mean its return with NULL value count

-- filter null value of color
SELECT COUNT(*) as null_row
From product
WHERE `Color` IS NULL -- return 248

-- filter not null value of color
SELECT COUNT(*) as notnull_row
From product
WHERE `Color` IS NOT NULL -- return 256

-- filter count of all
SELECT COUNT(*) as notnull_row
From product -- return 504



