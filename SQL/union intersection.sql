create table customerA(
	customerId int,
    customerName varchar(50),
    city varchar(50)
);

create table customerB(
	customerId int,
    customerName varchar(50),
    city varchar(50)
);


INSERT INTO customerA (customerId, customerName, city) 
VALUES 
(1, 'John Doe', 'New York'),
(2, 'Jane Smith', 'Los Angeles'),
(3, 'Robert Johnson', 'Chicago'),
(4, 'Emily Davis', 'Houston'),
(5, 'Michael Wilson', 'Phoenix'),
(6, 'David Brown', 'Philadelphia'),
(7, 'Emma Jones', 'San Antonio'),
(8, 'Olivia Garcia', 'San Diego'),
(9, 'James Miller', 'Dallas'),
(10, 'Sophia Martinez', 'San Jose');

INSERT INTO customerB (customerId, customerName, city) 
VALUES 
(11, 'John Doe', 'New York'),
(12, 'Jane Smith', 'Los Angeles'),
(13, 'Robert Johnson', 'Chicago'),
(14, 'Emily Davis', 'Houston'),
(15, 'Michael Wilson', 'Phoenix'),
(16, 'David Brown', 'Philadelphia'),
(17, 'Emma Jones', 'San Antonio'),
(18, 'Olivia Garcia', 'San Diego'),
(19, 'James Miller', 'Dallas'),
(20, 'Sophia Martinez', 'San Jose');


select customername , city 
from customerA
union
select customername , city 
from customerB;

select customername , city 
from customerA
union all
select customername , city 
from customerB;

create table customerC(
	customerId int,
    customerName varchar(50),
    city varchar(50)
);
create table customerD(
	customerId int,
    customerName varchar(50),
    city varchar(50)
);

INSERT INTO customerC (customerId, customerName, city) 
VALUES (1, 'John Doe', 'New York'),
(2, 'Jane Smith', 'Los Angeles'),
(3, 'Emily Johnson', 'Chicago'),
(4, 'Michael Brown', 'Houston');

INSERT INTO customerD VALUES (2, 'Jane Smith', 'Los Angeles');
INSERT INTO customerD VALUES (3, 'Emily Johnson', 'Chicago');
INSERT INTO customerD VALUES (5, 'Chris Evans', 'Boston');
INSERT INTO customerD VALUES (6, 'Robert Downey', 'San Francisco');

select * from customerC
intersect
select * from customerd;

-- intersect operation using joins
select distinct C.customerid , c.customerName , c.city from customerc as c
join customerd as d on c.customerid = d.customerid;

create table employee1 (
	employeeID int primary key,
    employeeName varchar(255),
    Department varchar(255)
);

INSERT INTO employee1 (employeeID, employeeName, Department) VALUES 
(1, 'John Doe', 'HR'),
(2, 'Jane Smith', 'Finance'),
(3, 'Emily Johnson', 'IT'),
(4, 'Michael Brown', 'Marketing'),
(5, 'Chris Evans', 'Sales'),
(6, 'Robert Downey', 'IT'),
(7, 'Scarlett Johansson', 'Finance'),
(8, 'Tom Holland', 'HR'),
(9, 'Mark Ruffalo', 'Marketing'),
(10, 'Elizabeth Olsen', 'Sales');

create table managers(
	managerId int primary key,
    managerName varchar(255),
    Department varchar(255)
);

INSERT INTO managers (managerId, managerName, Department) VALUES 
(1, 'Tony Stark', 'IT'),
(2, 'Steve Rogers', 'HR'),
(3, 'Bruce Banner', 'Research'),
(4, 'Natasha Romanoff', 'Operations'),
(5, 'Clint Barton', 'Finance');

select distinct e.employeeId , e.employeename , e.department
from employee1 as e
join managers as m on e.department = m.department


