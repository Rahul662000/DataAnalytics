create table employees(
	employeeId int primary key,
    employeeName varchar(255),
    age int,
    salary decimal(10,2),
    department varchar(255)
);

INSERT INTO Employees (employeeId, employeeName, age, salary, department) VALUES
(1, 'Alice Johnson', 28, 55000.00, 'HR'),
(2, 'Bob Smith', 30, 62000.50, 'Finance'),
(3, 'Charlie Brown', 35, 70000.00, 'IT'),
(4, 'David Williams', 40, 75000.00, 'Marketing'),
(5, 'Emma Davis', 32, 68000.25, 'Sales'),
(6, 'Frank Miller', 33, 71000.00, 'IT'),
(7, 'Grace Wilson', 29, 50000.75, 'HR'),
(8, 'Henry Thomas', 45, 81000.00, 'Engineering'),
(9, 'Ivy Martinez', 27, 48000.00, 'Finance'),
(10, 'Jack Taylor', 38, 72000.00, 'Engineering');

select * from employees
where age >= 30;

select employeeName , salary from employees
where department='sales';

create temporary table temp_hr_emp as 
	select employeeId , employeeName
    from employees
    where department = 'HR'
;

select * from temp_HR_emp;