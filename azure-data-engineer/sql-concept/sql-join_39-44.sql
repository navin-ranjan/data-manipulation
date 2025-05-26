--------------------# Join ------------------

-- Sample Tables
-- Table: employees
-- +----+----------+------------+
-- | id | name     | dept_id    |
-- +----+----------+------------+
-- | 1  | Alice    | 101        |
-- | 2  | Bob      | 102        |
-- | 3  | Charlie  | NULL       |
-- +----+----------+------------+

-- Table: departments
-- +--------+-------------+
-- | id     | dept_name   |
-- +--------+-------------+
-- | 101    | HR          |
-- | 102    | Sales       |
-- | 103    | IT          |
-- +--------+-------------+

-- 1. INNER JOIN (only matching records)
SELECT 
    e.name, d.dept_name
FROM 
    employees e
INNER JOIN 
    departments d ON e.dept_id = d.id;

-- 2. LEFT JOIN (all employees, with department if exists)
SELECT 
    e.name, d.dept_name
FROM 
    employees e
LEFT JOIN 
    departments d ON e.dept_id = d.id;

-- 3. RIGHT JOIN (all departments, with employees if exists)
SELECT 
    e.name, d.dept_name
FROM 
    employees e
RIGHT JOIN 
    departments d ON e.dept_id = d.id;

-- 4. FULL OUTER JOIN (all employees and all departments)
-- MySQL doesn't support FULL OUTER JOIN directly, so use UNION
SELECT 
    e.name, d.dept_name
FROM 
    employees e
LEFT JOIN 
    departments d ON e.dept_id = d.id
UNION
SELECT 
    e.name, d.dept_name
FROM 
    employees e
RIGHT JOIN 
    departments d ON e.dept_id = d.id;

-- 5. CROSS JOIN (Cartesian product)
SELECT 
    e.name, d.dept_name
FROM 
    employees e
CROSS JOIN 
    departments d;

-- 6. SELF JOIN (example: manager-employee relationship)
-- Suppose employees table has a manager_id referencing employee id
SELECT 
    e.name AS employee, 
    m.name AS manager
FROM 
    employees e
LEFT JOIN 
    employees m ON e.manager_id = m.id;
