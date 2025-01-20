-- Create the Employees table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2),
    HireDate DATE,
    City VARCHAR(50),
    Age INT
);

-- Insert data into the Employees table
INSERT INTO Employees (FirstName, LastName, Department, Salary, HireDate, City, Age) VALUES
('John', 'Smith', 'HR', 60000, '2015-06-01', 'New York', 35),
('Alice', 'Johnson', 'IT', 85000, '2018-07-15', 'Los Angeles', 28),
('Robert', 'Brown', 'IT', 95000, '2014-03-10', 'New York', 42),
('Emily', 'Davis', 'Marketing', 72000, '2020-08-20', 'Chicago', 30),
('Michael', 'Wilson', 'HR', 58000, '2017-12-01', 'New York', 40),
('Sarah', 'Taylor', 'IT', 88000, '2019-05-11', 'Seattle', 32),
('David', 'Martinez', 'Marketing', 67000, '2021-09-15', 'Los Angeles', 27),
('Karen', 'Anderson', 'HR', 61000, '2016-11-03', 'Chicago', 36);

-- Create the Projects table
CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY AUTO_INCREMENT,
    EmployeeID INT,
    ProjectName VARCHAR(50),
    StartDate DATE,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

-- Insert data into the Projects table
INSERT INTO Projects (EmployeeID, ProjectName, StartDate) VALUES
(1, 'HR Analytics', '2023-01-10'),
(2, 'Website Upgrade', '2022-06-15'),
(3, 'Security Overhaul', '2021-11-01'),
(6, 'Cloud Migration', '2023-03-01');

=================================================================================================

Practice Questions:
Basic SELECT Queries:

---- Retrieve all records from the Employees table.
---- Find the first and last names of all employees in the HR department.
Filtering Data:

-- List all employees with a salary greater than 80,000.
-- Find employees who were hired after January 1, 2018.
-- Display employees who live in New York.


Aggregate Functions:

-- Calculate the average salary of all employees.
-- Find the highest salary in the IT department.
-- Count the number of employees in each department.

Sorting and Limiting:

-- Display the top 3 highest-paid employees.
-- Show employees sorted by their age in descending order.

Grouping:

-- Group employees by their department and calculate the total salary for each department.
-- Find the average age of employees in each city.


Practice joining the Employees and Projects tables:

-- Find the projects handled by employees in the IT department.
-- List all employees and their project names (if any).


Updates and Deletes:

-- Increase the salary of all employees in Marketing by 10%.
-- Delete all employees hired before 2016.

Subqueries:

-- Find employees whose salary is higher than the average salary.
-- List employees who are working on a project with the name "Cloud Migration."



