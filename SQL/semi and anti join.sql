create database user_2;

use user_2;

create table orders(
	orderID int,
    customerID INT,
    OrderDate Date,
    TotalAmount Decimal(10,2)
);

create table customers(
	customerID int,
    customerName varchar(255),
    city varchar(255)
);

INSERT INTO customers (customerID, customerName, city) VALUES 
(1, 'John Doe', 'New York'),
(2, 'Jane Smith', 'Los Angeles'),
(3, 'Emily Johnson', 'Chicago'),
(4, 'Michael Brown', 'Houston'),
(5, 'Chris Evans', 'Boston');

INSERT INTO orders (orderID, customerID, orderDate, totalAmount) VALUES 
(101, 1, '2025-03-01', 250.75),
(102, 2, '2025-03-02', 320.50),
(103, 3, '2025-03-03', 150.00),
(104, 4, '2025-03-04', 420.90),
(105, 5, '2025-03-05', 550.00),
(106, 1, '2025-03-06', 120.50),
(107, 2, '2025-03-07', 330.75),
(108, 3, '2025-03-08', 100.00),
(109, 4, '2025-03-09', 220.30),
(110, 5, '2025-03-10', 460.00);

-- semi join - give left data present in both

select orderId , orderDate , TotalAmount
from orders as o
where exists (
	select 1 from customers as c where o.customerId = c.customerId
);

-- anti join - give left table not present in both

select orderId , orderDate , TotalAmount
from orders as o
where not exists (
	select 1 from customers as c where o.customerId = c.customerId
);