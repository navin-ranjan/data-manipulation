----------------- # IF and CASE in MySQL ----------------- 

SELECT 
    name,
    salary,
    IF(salary > 50000, 'High', 'Low') AS salary_status
FROM employees;

-- The above query checks if the salary is greater than 50000.
-- If true, it returns 'High'; otherwise, it returns 'Low'.

-- expalin about if and case write example
-- The IF function in MySQL is used to evaluate a condition and return one of two values based on whether the condition is true or false.
-- The syntax is:
IF(condition, true_value, false_value)

-- The CASE statement is another way to evaluate conditions in MySQL.
-- It can be more powerful than IF when dealing with multiple conditions.
-- The syntax is:
CASE
    WHEN condition1 THEN result1
    WHEN condition2 THEN result2
    ...
    ELSE default_result
END     
-- The CASE statement can be used in SELECT, UPDATE, DELETE, and other SQL statements.
-- The CASE statement can be used in SELECT, UPDATE, DELETE, and other SQL statements.
-- It allows for more complex conditional logic than the IF function.

-- Example of using CASE in a SELECT statement:
SELECT 
    name,
    salary,
    CASE
        WHEN salary > 70000 THEN 'High'
        WHEN salary BETWEEN 50000 AND 70000 THEN 'Medium'
        ELSE 'Low'
    END AS salary_status


-----------------# scenario custom sorting -----------------
-- Suppose we have a table of products with a column for product type.
-- We want to sort the products based on a custom order of product types.
SELECT 
    product_name,
    product_type,
    CASE product_type
        WHEN 'Electronics' THEN 1
        WHEN 'Clothing' THEN 2
        WHEN 'Home & Kitchen' THEN 3
        ELSE 4
    END AS custom_sort_order
FROM products
ORDER BY custom_sort_order;


--------------- # Union and Union All -----------------
-- The UNION operator is used to combine the result sets of two or more SELECT statements.
-- It removes duplicate rows from the result set.   
-- The UNION ALL operator also combines the result sets but includes all duplicates.

-- The syntax for UNION is:
SELECT column1, column2, ...
FROM table1
UNION
SELECT column1, column2, ...
FROM table2;

-- The syntax for UNION ALL is:
SELECT column1, column2, ...
FROM table1
UNION ALL
SELECT column1, column2, ...
FROM table2;


-- Example of using UNION:
SELECT 
    name, email
FROM customers
UNION
SELECT 
    name, email
FROM suppliers;


-- Example of using UNION ALL:
SELECT 
    name, email
FROM customers
UNION ALL
SELECT 
    name, email
FROM suppliers;

-------------------# Intersect -------------------
-- The INTERSECT operator is used to return the common rows from two or more SELECT statements.
-- It is not directly supported in MySQL, but you can achieve similar results using INNER JOIN or EXISTS.

-- Example of  Intersect using INNER JOIN:
SELECT 
    c.name, c.email
FROM customers c
INNER JOIN suppliers s ON c.email = s.email;

-- Example of Intersect using EXISTS:
SELECT 
    name, email
FROM customers c
WHERE EXISTS (
    SELECT 1
    FROM suppliers s
    WHERE c.email = s.email
);

-------------------# Except -------------------
-- The EXCEPT operator is used to return rows from the first SELECT statement that are not present in the second SELECT statement.
-- It is not directly supported in MySQL, but you can achieve similar results using LEFT JOIN or NOT EXISTS.

-- Example of Except using LEFT JOIN:
SELECT 
    c.name, c.email
FROM customers c
LEFT JOIN suppliers s ON c.email = s.email
WHERE s.email IS NULL;

-- Example of Except using NOT EXISTS:
SELECT 
    name, email
FROM customers c
WHERE NOT EXISTS (
    SELECT 1
    FROM suppliers s
    WHERE c.email = s.email
);

-----------------# Foreign Key -----------------
-- A foreign key is a field (or collection of fields) in one table that uniquely identifies a row of another table.
-- It establishes a relationship between the two tables, ensuring referential integrity.
-- The table containing the foreign key is called the child table, and the table containing the candidate key is called the parent table.
-- The foreign key constraint ensures that the value in the foreign key column(s) matches a value in the parent table's primary key column(s).

-- Example of creating a foreign key constraint:
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
