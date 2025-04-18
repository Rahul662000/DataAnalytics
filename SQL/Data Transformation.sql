-- Data Transformation
create table customers(
	customerId int primary key,
    FirstName varchar(255),
    LastName varchar(255)
);

INSERT INTO Customers (customerId, FirstName, LastName) VALUES
(1, 'John', 'Doe'),
(2, 'Jane', 'Smith'),
(3, 'Michael', 'Brown'),
(4, 'Sarah', 'Johnson'),
(5, 'Emily', 'Davis'),
(6, 'Robert', 'Wilson'),
(7, 'David', 'Miller'),
(8, 'Emma', 'Anderson');

select * from customers;

select concat(FirstName , ' ' , LastName) as FullName 
from customers;

select upper (LastName) as UpperCaseLastName from customers;
select lower (LastName) as LowerCaseLastName from customers;

create table orders(
	orderId int primary Key,
    customerId int,
    orderDate date,
    totalAmount decimal(10,2)
);

INSERT INTO Orders (orderId, customerId, orderDate, totalAmount) VALUES
(1, 1, '2025-03-01', 2500.50),
(2, 2, '2025-03-02', 4500.75),
(3, 3, '2025-03-03', 1200.00),
(4, 4, '2025-03-04', 3300.25),
(5, 5, '2025-03-06', 2100.90),
(6, 5, '2025-03-07', 1800.00),
(7, 7, '2025-03-08', 7500.50),
(8, 8, '2025-03-09', 6200.00);

create table products(
	productId int primary key,
    productName varchar(255),
    unitPrice decimal(10,2)
);

INSERT INTO Products (productId, productName, unitPrice) VALUES
(1, 'Laptop', 75000.50),
(2, 'Smartphone', 45000.75),
(3, 'Tablet', 25000.00),
(4, 'Smartwatch', 15000.25),
(5, 'Headphones', 5000.00),
(6, 'Monitor', 22000.90),
(7, 'Keyboard', 3500.00),
(8, 'Mouse', 2000.50),
(9, 'Printer', 18000.00),
(10, 'External Hard Drive', 12000.60);