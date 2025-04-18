use window_function;

create table employees(
	EmployeeId int primary key,
    EmployeeName varchar(255),
    Department varchar(255),
    salary decimal(10,2)
);

INSERT INTO employees (EmployeeId, EmployeeName, Department, Salary)
VALUES
(1, 'Alice', 'HR', 55000.00),
(2, 'Bob', 'Finance', 62000.50),
(3, 'Charlie', 'IT', 72000.75),
(4, 'David', 'Marketing', 48000.25),
(5, 'Eva', 'Sales', 51000.00);

INSERT INTO employees (EmployeeId, EmployeeName, Department, Salary)
VALUES
(6, 'Alicet', 'HR', 55000.00),
(7, 'Bobby', 'Finance', 62000.50);

select EmployeeId , EmployeeName , Department , Salary, 
	avg(salary) over (partition by department) as AvgSalary
from Employees;