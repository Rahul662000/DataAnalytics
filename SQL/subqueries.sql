create table employee(
	EmployeeID int primary key,
    EmployeeName varchar(255),
    DepartmentID int,
    Salary decimal(10,2)
);

create table deparments(
	DepartmentId int primary key,
    DepartmentName Varchar(255)
);

-- Insert Values into Departments
INSERT INTO deparments VALUES
(1, 'HR'),
(2, 'Finance'),
(3, 'Engineering');

-- Insert Values into Employee
INSERT INTO employee VALUES
(101, 'Alice', 1, 60000.00),
(102, 'Bob', 2, 75000.00),
(103, 'Charlie', 3, 80000.00),
(104, 'David', 1, 65000.00),
(105, 'Eve', 3, 90000.00);

select employeeId , employeeName , salary
from employee
where departmentID = (select departmentId from deparments where departmentName = 'HR') ;

select departmentName
	,(select avg(salary) from employee as e where e.departmentId = d.departmentId)
from deparments as d;