--------------# Having -----------------
-- The HAVING clause is used to filter records that work on summarized GROUP BY results.
-- It is similar to the WHERE clause, but WHERE cannot be used with aggregate functions.

-- Example of using HAVING:
SELECT 
    customer_id,
    COUNT(order_id) AS total_orders
FROM orders
GROUP BY customer_id
HAVING total_orders > 5;


-------------------# Top Clause -----------------
-- The TOP clause is used to limit the number of rows returned in a result set.
-- It is not directly supported in MySQL, but you can achieve similar results using LIMIT.
-- Example of using LIMIT:
SELECT 
    name, email
FROM customers
LIMIT 10;
-- This will return the first 10 rows from the customers table.

