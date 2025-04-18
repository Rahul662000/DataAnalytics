create table tablex(
	ID_X int primary key,
    columnx1 varchar(255),
    columnx2 int
);

INSERT INTO tablex (ID_X, columnx1, columnx2) 
VALUES 
(1, 'Value1', 100),
(2, 'Value2', 200),
(3, 'Value3', 300);

create table tabley(
	ID_Y int primary key,
    columny1 varchar(255),
    columny2 date
);

select tablex.* , tabley.* from tablex cross join tabley;

create table employee(
	EmployeeID int primary key,
    EmployeeName varchar(255),
    ManageId int
);

INSERT INTO employee (EmployeeID, EmployeeName, ManageId) 
VALUES 
(1, 'John Doe', NULL),         -- Manager
(2, 'Jane Smith', 1),          -- Reports to John Doe
(3, 'Bob Johnson', 1),         -- Reports to John Doe
(4, 'Alice Williams', 2);      -- Reports to Jane Smith

select * from employee;

truncate table employee;

select employee1.EmployeeID , employee1.EmployeeName , employee2.EmployeeID as ManagerId , employee2.EmployeeName  as managerName
from Employee employee1 
join employee employee2 on employee1.manageId = employee2.manageID