----------------# Window Functions -----------------
-- Window functions are used to perform calculations across a set of table rows that are somehow related to the current row.
-- They are often used for running totals, moving averages, and ranking.

-- Example of using a window function:
SELECT 
    employee_id,
    salary,
    AVG(salary) OVER (PARTITION BY department_id) AS avg_department_salary
FROM employees;

-- row_number() function
SELECT 
    employee_id,
    department_id,
    salary,
    ROW_NUMBER() OVER (PARTITION BY department_id ORDER BY salary DESC) AS row_num
FROM employees;

-- rank() function
SELECT 
    employee_id,
    department_id,
    salary,
    RANK() OVER (PARTITION BY department_id ORDER BY salary DESC) AS rank
FROM employees;

-- dense_rank() function
SELECT 
    employee_id,
    department_id,
    salary,
    DENSE_RANK() OVER (PARTITION BY department_id ORDER BY salary DESC) AS dense_rank
FROM employees;

-- partition by clause
-- The PARTITION BY clause divides the result set into partitions to which the window function is applied.

-- Example of using PARTITION BY with ROW_NUMBER():
SELECT 
    employee_id,
    department_id,
    salary,
    ROW_NUMBER() OVER (PARTITION BY department_id ORDER BY salary DESC) AS row_num
FROM employees;

-- LAG() function
SELECT 
    employee_id,
    salary,
    LAG(salary, 1) OVER (ORDER BY employee_id) AS previous_salary
FROM employees;
-- The LAG() function allows you to access data from a previous row in the same result set without using a self-join.
-- It is useful for comparing values in the current row with values in a previous row.

-- LEAD() function
SELECT 
    employee_id,
    salary,
    LEAD(salary, 1) OVER (ORDER BY employee_id) AS next_salary
FROM employees;
-- The LEAD() function allows you to access data from a subsequent row in the same result set without using a self-join.
-- It is useful for comparing values in the current row with values in a subsequent row.


-- FIRST_VALUE() function
SELECT 
    employee_id,
    salary,
    FIRST_VALUE(salary) OVER (ORDER BY employee_id) AS first_salary
FROM employees;  

-- The FIRST_VALUE() function returns the first value in an ordered set of values.

-- LAST_VALUE() function
SELECT 
    employee_id,
    salary,
    LAST_VALUE(salary) OVER (ORDER BY employee_id ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS last_salary
FROM employees;
-- The LAST_VALUE() function returns the last value in an ordered set of values.    