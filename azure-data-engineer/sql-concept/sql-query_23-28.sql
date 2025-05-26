-------------------------# Update Rows in Table -------------------------

-- update rows by column without apply condition

SELECT * from product

---

UPDATE product SET `MakeFlag`= false

-- update rows by column with condition
UPDATE product SET `Color`='No Color'
WHERE `Color` IS NULL

-- update multiple rows 
UPDATE product SET `Color`='No Color', `MakeFlag`= TRUE
WHERE `Color` IS NULL AND `MakeFlag`=false

----------------------# Delete Rows From Table ------------------------------
/*
# Keyword
    Delete - this used to apply enable where fileter on table
    Truncate - this used to delete all rows in one hit, it not accept where filter
*/

-- delete rows by delete keyword apply by where filter 
DELETE FROM product
WHERE `Color` IS NULL AND `MakeFlag`=false

-- delete all data by traucate  keyword
TRUNCATE Table product


-------------------------# String Function part1 ----------------------------
/*
# Function 
    UPPER, LOWER, LEFT, RIGHT, SUBSTRING,LENGTH, TRIM, LTRIM, RTRIM,
*/

--  UPPER - to convert upper case string
SELECT UPPER(Name) from product

-- LOWER - to convert lower case string
SELECT LOWER(Name) from product

-- LEFT - to get left padding data define index #Ex- LEFT('NAME',3) 0/P - NAM
SELECT LEFT(Name, 3) FROM product

-- RIGHT - to get right oadding data defin index #EX- RIGHT('NAME',3) 0/P - AME
SELECT RIGHT(Name, 3) FROM product

-- SUBSTRING - to substring value string  #EX- SUBSTRING('NAME',1,)
SELECT `Name`, SUBSTRING(Name,2,2) as sub_string FROM product

-- LENGTH - to find length of string / (LEN - SQL Server)
SELECT NAME , LENGTH(Name) from product 

-- TRIM - remove space from starting and ending of string
SELECT NAME , TRIM(NAME) from product

-- LTRIM - remove space from left
SELECT NAME , LTRIM(NAME) from product

-- RTRIM - remove space from right
SELECT NAME , RTRIM(NAME) from product

-----------------------# String Function Part2 --------------------------------------
/*
# Function 
    REPLACE, STUFF , REVERSE
*/

-- REPLACE - to replace of characters
SELECT NAME, REPLACE(NAME, 'ad','y') as rpc from product

-- STUFF - to replace define specific index #Only SQL Server
SELECT STUFF('HELLO',2,3,'x' )

-- REVERSE - to reverse string 
SELECT Name, REVERSE(Name) from product

------------------------------# Scenario Combine Names -------------------------------

-- to combine two column 
SELECT CONCAT(`ProductNumber`,`Color`) from product
----  with space

SELECT CONCAT(`ProductNumber`,' ', `Color`) from product

-- add more space
SELECT CONCAT(`ProductNumber`,SPACE(2),`Color`) from product

-- CONCAT_WS() - this used to every column define space

SELECT CONCAT_WS(SPACE(1),`ProductNumber`,`Color`, `ListPrice`) from product

SELECT CONCAT_WS('-',`ProductNumber`,`Color`, `ListPrice`) from product


---------------------------# Extract Names --------------------------------
/*
# Function
    CHARINDEX  #SQL Server
    INSTR, SUBSTRING_INDEX #MYSQL
*/
-- Extract Name - First Name , Middle Name, Last Name 

-- to find index
SELECT Name , INSTR(Name, ' ') as char_index from product

-- to find FirstName
SELECT Name , TRIM(LEFT(Name, INSTR(Name, ' '))) as FirstName from product

SELECT Name , SUBSTRING_INDEX(`Name`, ' ', 1) as FirstName from product

-- to find LastName
SELECT NAME, SUBSTRING_INDEX(`Name`,' ', -1) LastName from product

-- to find middle 

SELECT NAME, SUBSTRING_INDEX(SUBSTRING_INDEX(`Name`,' ', 2),' ',-1) MiddleName from product
