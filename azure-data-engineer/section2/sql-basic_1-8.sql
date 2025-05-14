
-- create database ---
CREATE DATABASE practice

-- drop database --
DROP DATABASE practice

-- use database---
USE practice

-- create table ---
CREATE TABLE employee(
    id INT,
    name VARCHAR(50),
    email VARCHAR(50),
    doj DATETIME,
    salary FLOAT
)

-- drop table  --
DROP TABLE employee

-- insert data in table --
INSERT INTO employee(id, name, email, doj, salary) VALUE(2, 'navin ranjan', 'navin123@gmail.com', '2022-04-25', 28500)

-- insert data with multiple row ---
INSERT INTO employee(id, name, email, doj, salary) 
VALUES(1, 'navin ranjan', 'navin123@gmail.com', '2022-04-25', 28500),
(3, 'rohan ranjan', 'navin123@gmail.com', '2022-03-25', 38500),
(4, 'rakesh ranjan', 'navin123@gmail.com', '2022-06-25', 58500),
(5, 'rohit ranjan', 'navin123@gmail.com', '2022-12-25', 68500)


-- select all column data from table ------
SELECT * FROM employee

-- select by column data from table ------
SELECT name, email FROM employee

---------------------------------------------------------------------
-- dump data load in mysql ---
SOURCE section2\AWBackup.sql; -- its no working here but cmd is correct # use this on cmdline

-- # Alternative way
-- # first create database in db
-- # open terminal {mysql -u root -p adventureworks < section2/AWBackup.sql} run this cmd it working
-------------------------------------------------------------------------









