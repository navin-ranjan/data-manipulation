---------------# Subquery -------------------
-- A subquery is a query nested inside another query.
-- It can be used in SELECT, INSERT, UPDATE, and DELETE statements.
-- Subqueries can return a single value, a list of values, or a table.

-- Example of a subquery in a SELECT statement:
SELECT 
    name, email
FROM customers
WHERE customer_id IN (
    SELECT customer_id
    FROM orders
    WHERE order_date > '2023-01-01'
);


-----------------# Exists/ correlated subquery -----------------
-- The EXISTS operator is used to check if a subquery returns any rows.

-- It returns TRUE if the subquery returns one or more rows, and FALSE if it returns no rows.

-- Example of using EXISTS:
SELECT 
    name, email
FROM customers c
WHERE EXISTS (
    SELECT 1
    FROM orders o
    WHERE c.customer_id = o.customer_id
);