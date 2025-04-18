create table customers2(
	customerId int primary key,
    customerName varchar(255)
);

INSERT INTO customers2 (customerId, customerName) 
VALUES 
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie'),
(4, 'David');

create table orders3(
	orderId int primary key,
    customerId int,
    quantity int,
    orderDate date
);

INSERT INTO orders3 (orderId, customerId, quantity, orderDate)
VALUES 
(101, 1, 2, '2024-03-01'),
(102, 2, 1, '2024-03-02'),
(103, 1, 3, '2024-03-03'),
(104, 3, 5, '2024-03-04'),
(105, 4, 4, '2024-03-05'),
(106, 2, 2, '2024-03-06'),
(107, 3, 1, '2024-03-07');

select customerId , customerName
from customers2
where customerId in (
	select distinct customerId
    from orders3
    where quantity > (
		select avg(quantity) 
        from orders3
    )
);

create table departments1 (
	departmentId int primary key,
    departmentName varchar(255)
);

INSERT INTO departments1 (departmentId, departmentName)
VALUES 
(1, 'HR'),
(2, 'Finance'),
(3, 'Engineering');

create table employees (
	employeeId int primary key,
    employeeName varchar(255),
    departmentId int,
    salary decimal(10,2),
    foreign key (departmentId) references departments1(departmentId)
);

INSERT INTO employees (employeeId, employeeName, departmentId, salary) 
VALUES 
(1, 'Alice', 1, 75000.00),
(2, 'Bob', 2, 80000.00),
(3, 'Charlie', 3, 95000.00),
(4, 'David', 1, 70000.00),
(5, 'Eva', 2, 85000.00),
(6, 'Frank', 3, 90000.00),
(7, 'Franklin', 2, 80000.00);

select employeeId , employeeName , DepartmentName , salary
from employees
join departments1 on employees.departmentId = departments1.departmentId
where salary > (
	select avg(salary) from employees as e where e.departmentId = employees.departmentId
);