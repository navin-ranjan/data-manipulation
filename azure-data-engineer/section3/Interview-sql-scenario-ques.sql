----- Find Average -----------

CREATE Table ttable(val int)

insert into ttable values(100);
insert into ttable values(200);
insert into ttable values(NULL);
insert into ttable values();

select * from ttable;

SELECT 
    AVG(val) AS avg
FROM ttable;

-- expalin of above query if insert null value


-------------- # Join challenge ------------------------

CREATE Table tablea(id INT);
CREATE Table tableb(id INT);

insert into tablea values(1),(3),(4),(NULL);
insert into tableb values(1),(2),(3),(NULL);

select * from tablea;
select * from tableb;

SELECT 
    a.id AS tablea_id,
    b.id AS tableb_id
FROM tablea a
INNER JOIN tableb b ON a.id = b.id;

SELECT 
    a.id AS tablea_id,
    b.id AS tableb_id
FROM tablea a
FULL OUTER JOIN tableb b ON a.id = b.id;

-------#identity and delete dublicate row ------------------------

SHOW TABLES;
DROP Table employee1;

CREATE TABLE employee1 (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    age INT,
    salary FLOAT
);

INSERT INTO employee1 (name, age, salary) VALUES
('John', 30, 50000),
('Jane', 25, 60000),
('John', 30, 50000), -- Duplicate
('Alice', 28, 70000),
('Bob', 35, 80000);

SELECT * FROM employee1;
-- 1. Using ROW_NUMBER() to identify duplicates

--Method 1 -> Subquery
SELECT * from ( SELECT * ,
    ROW_NUMBER() OVER(PARTITION BY name, age, salary ORDER BY id) AS row_num
    FROM employee1) emp
where row_num > 1; 

--Method 2 -> CTE
WITH CTE_emp AS (
    SELECT *,
        ROW_NUMBER() OVER(PARTITION BY name, age, salary ORDER BY id) AS row_num
    FROM employee1 )
SELECT * FROM CTE_emp
WHERE row_num > 1;


-- delete duplicate rows

DELETE FROM employee1
WHERE id in(
    SELECT id FROM(
        SELECT id,
        ROW_NUMBER() OVER (PARTITION BY name, age, salary ORDER BY id) as row_num
        FROM employee1
    ) emp
    WHERE row_num >1
)

SELECT * FROM employee1;

--------------------------# Custom Merging -----------------------------

 DROP TABLE IF EXISTS employee1;
CREATE TABLE employee1 (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    salary FLOAT
);

INSERT INTO employee1 (id, name, age, salary) VALUES
(1, 'John', 30, 50000),
(2, 'Jane', 25, 60000),
(3, 'Alice', 28, 70000),
(4, 'Bob', 35, 80000);


SELECT * FROM employees;

SELECT * FROM employee1;
---pending


----------------# Missing Data ----------------------

