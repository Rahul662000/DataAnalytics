SET SQL_SAFE_UPDATES = 0;
create database largeData;

use largeData;

create table Employees(
	empId int primary key,
    empName varchar(255),
    age int,
    salary decimal(10,2),
    department varchar(255)
);

INSERT INTO Employees (empId, empName, age, salary, department) VALUES
(1, 'Alice Johnson', 30, 60000.50, 'Finance'),
(2, 'Bob Smith', NULL, 55000.75, 'IT'),  -- Age is NULL
(3, 'Charlie Brown', 40, NULL, 'HR'),  -- Salary is NULL
(4, 'David Williams', 35, 72000.25, NULL),  -- Department is NULL
(5, 'Emma Davis', NULL, NULL, 'Marketing'),  -- Age & Salary are NULL
(6, 'Frank Miller', NULL, 90000.00, 'Finance'),  -- Age is NULL
(7, 'Grace Wilson', 32, NULL, 'HR'),  -- Salary is NULL
(8, 'Hannah Lee', 29, 58000.90, NULL),  -- Department is NULL
(9, 'Ian Clark', 50, NULL, 'Operations'),  -- Salary is NULL
(10, 'Jack White', NULL, NULL, 'IT');  -- Age & Salary are NULL

select * from employees;


-- Updating or adding missing values 
update employees as e
join (
	select avg(age) as avgage
    from employees 
    where age is not null
) as sub

set e.age = sub.avgage
where e.age is null AND e.empId IS NOT NULL;


-- deleting of missing values
delete from employees 
where salary is null;

truncate table employees;


-- Flagging 
update employees 
set department = 'Unknown'
where department is null;

