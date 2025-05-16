-------------------------# Grouping Rows ----------------------
/*
#Keyword
    GROUP BY,  --> when we select multiple column with aggrigate function then apply GROUP BY keyword
    
# USAGE #when apply group by
    --> fist check which column apply aggregate function, 
    --> then apply all select other column as GROUP BY
    
*/
-- total sum, avg with group by product id  ##error
SELECT `SalesOrderID`, `ProductID`, SUM(`UnitPrice`) FROM salesorderdetail -- its getting error ,because we have apply multiple column

SELECT `ProductID`, SUM(`UnitPrice`) sTotal, AVG(`UnitPrice`) avgvalue
FROM salesorderdetail
GROUP BY `ProductID` -- its correct

-----------------------# Select.. Into/ table copy with data ---------------------------
-- copy with all column and data
CREATE TABLE NEW_TABLE_ABC AS
Select * FROM product

-- copy table with query filter
CREATE TABLE NEW_TABLE_DEF AS
Select * FROM product WHERE color='RED'

----------------------# Create Table with primary key ---------------------
CREATE TABLE Employee(
    id int PRIMARY KEY,
    name VARCHAR,
    doj DATETIME,
    salary float
)

--------------------# Create Table  with NOT NULL Constraint --------------------
CREATE TABLE Employee(
    id int PRIMARY KEY,
    name VARCHAR,
    doj DATETIME NOT NULL,
    salary float NOT NULL
)

-------------------# Create Table with Unique Constraint -----------------------



