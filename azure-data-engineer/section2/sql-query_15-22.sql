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
-- in primary key not accept null value
-- not accept duplicate value
CREATE TABLE Employee1(
    id int PRIMARY KEY,
    ename VARCHAR(100),
    doj DATETIME,
    salary float
)

--------------------# Create Table  with NOT NULL Constraint --------------------
CREATE TABLE Employee2(
    id int PRIMARY KEY,
    ename VARCHAR(100),
    doj DATETIME NOT NULL,
    salary float NOT NULL
)

-------------------# Create Table with Unique Constraint -----------------------
-- it's accept null value only one time
-- not accept duplicate value
CREATE TABLE Employee3(
    id int PRIMARY KEY,
    ename VARCHAR(100),
    doj DATETIME NOT NULL,
    salary float NOT NULL,
    email VARCHAR(100) UNIQUE
)

-- if you not required null value store in unique key
CREATE TABLE Employee4(
    id int PRIMARY KEY,
    ename VARCHAR(100),
    doj DATETIME NOT NULL,
    salary float NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
)

------------------# Create Table with Check Constraint ------------------------------------
-- Used to apply condition on column

CREATE TABLE Employee5(
    id int PRIMARY KEY,
    ename VARCHAR(100),
    doj DATETIME NOT NULL,
    salary float Check(salary>10000)
)

-- less than 10000, its wrong
INSERT INTO Employee5 (id, ename, doj, salary)
VALUES (1, 'John Doe', '2023-05-10 09:30:00', 9000);

-- greater  than 10000, its correct
INSERT INTO Employee5 (id, ename, doj, salary)
VALUES (1, 'John Doe', '2023-05-10 09:30:00', 11000);


---------------# Create Table with Default Constraint ---------------------------------------

CREATE TABLE Employee6(
    id int PRIMARY KEY,
    ename VARCHAR(100),
    doj DATETIME NOT NULL,
    salary float Check(salary>10000),
    city VARCHAR(100) DEFAULT 'Indore'
)

-----
INSERT INTO Employee6 (id, ename, doj, salary)
VALUES (2, 'John Doe', '2023-05-10 09:30:00', 11000);
-----
INSERT INTO Employee6 (id, ename, doj, salary, city)
VALUES (3, 'John Doe', '2023-05-10 09:30:00', 11000, 'Patna');
----
SELECT *  FROM employee6

-------------------# Create Table with Auto Increment -------------------
/*
# Identity(1,1)  for SQL SERVER DB Only
    -> left 1 means start with 1 value
    -> right 1 means add +1 of previous value
*/
CREATE TABLE Employee_AutoIncrement(
    id int PRIMARY KEY identity(1,1),
    ename VARCHAR(100),
    doj DATETIME NOT NULL,
    salary float Check(salary>10000),
    city VARCHAR(100) DEFAULT 'Indore'
)


-- for mysql 
CREATE TABLE Employee_AutoIncrement(
    id int PRIMARY KEY AUTO_INCREMENT,
    ename VARCHAR(100),
    doj DATETIME NOT NULL,
    salary float Check(salary>10000),
    city VARCHAR(100) DEFAULT 'Indore'
)