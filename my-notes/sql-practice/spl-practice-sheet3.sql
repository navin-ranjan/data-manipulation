---- Retrieve all records from the Employees table.
select * from Employees

-- Find the first and last names of all employees in the HR department.
select FirstName, LastName from employees where Department='HR';

-- List all employees with a salary greater than 80,000.
select * from employees where salary>80000;

-- Find employees who were hired after January 1, 2018.
select * from employees where HireDate > '2018-01-01';

-- Display employees who live in New York.
select * from employees where city='new york';

-- Calculate the average salary of all employees.
select avg(salary) from employees;

-- Find the highest salary in the IT department.
select max(salary) from employees where Department='IT';

-- Count the number of employees in each department.
select Department, count(Department) as ecount from employees  group by Department;

-- Display the top 3 highest-paid employees.
select * from employees order by salary desc limit 3;

-- Show employees sorted by their age in descending order.
select * from employees order by Age desc;

-- Group employees by their department and calculate the total salary for each department.
select Department, sum(salary) as total_sal from employees group by Department;

-- Find the average age of employees in each city.
select city, avg(Age) as avg_age from employees group by city;

-- Find the projects handled by employees in the IT department.
select e.FirstName, e.LastName , p.ProjectName , e.Department 
from employees e 
inner join projects p on e.EmployeeID=p.EmployeeID 
where e.Department='IT';

-- List all employees and their project names (if any).
select e.FirstName, e.LastName , p.ProjectName , e.Department from employees e inner join projects p on e.EmployeeID=p.EmployeeID;

-- Increase the salary of all employees in Marketing by 10%.
update employees set salary= salary+salary*0.10  where Department='Marketing';

-- Delete all employees hired before 2016.
delete from employees where HireDate < '2017-01-01';

-- Find employees whose salary is higher than the average salary.
select max(salary), FirstName, LastName, Department, City, Age 
from employees 
where salary> (select avg(salary) from employees);

-- List employees who are working on a project with the name "Cloud Migration."
select e.*, p.ProjectName 
from employees e 
inner join projects p on e.EmployeeID=p.EmployeeID 
where p.ProjectName='Cloud Migration';












