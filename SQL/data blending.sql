create database datablending;

use datablending;

create table orders(
	order_id int primary key,
    customer_id int,
    order_date date,
    total_amount decimal(10,2)
);

INSERT INTO Orders (order_id, customer_id, order_date, total_amount) VALUES
(1, 101, '2025-03-01', 2500.50),
(2, 102, '2025-03-02', 4500.75),
(3, 103, '2025-03-03', 1200.00),
(4, 104, '2025-03-04', 3300.25),
(5, 105, '2025-03-06', 2100.90),
(6, 105, '2025-03-07', 1800.00),
(7, 107, '2025-03-08', 7500.50),
(8, 108, '2025-03-09', 6200.00),
(9, 109, '2025-03-10', 2900.30),
(10, 110, '2025-03-11', 3700.60);

create table customers(
	customerId int primary key,
    customerName varchar(255),
    email varchar(255)
);

INSERT INTO Customers (customerId, customerName, email) VALUES
(101, 'Amit Sharma', 'amit.sharma@example.com'),
(102, 'Priya Verma', 'priya.verma@example.com'),
(103, 'Rahul Singh', 'rahul.singh@example.com'),
(104, 'Neha Kapoor', 'neha.kapoor@example.com'),
(105, 'Vikas Yadav', 'vikas.yadav@example.com'),
(106, 'Sneha Agarwal', 'sneha.agarwal@example.com'),
(107, 'Ankit Mehta', 'ankit.mehta@example.com'),
(108, 'Rohit Khanna', 'rohit.khanna@example.com'),
(109, 'Kiran Das', 'kiran.das@example.com'),
(110, 'Meera Nair', 'meera.nair@example.com');

-- Blending

select o.order_Id , o.order_date , o.total_amount , c.customername , c.email 
	from orders as o join customers as c on o.customer_Id = c.customerId;
    
create table products(
	product_id int primary key,
    product_name varchar(255),
    price decimal(10,2)
);

INSERT INTO Products (product_id, product_name, price) VALUES
(1, 'Laptop', 75000.00),
(2, 'Smartphone', 35000.50),
(3, 'Headphones', 2500.75),
(4, 'Smartwatch', 14999.99),
(5, 'Tablet', 29999.00),
(6, 'Wireless Mouse', 1200.50),
(7, 'Keyboard', 1800.00),
(8, 'Monitor', 20000.00),
(9, 'External Hard Drive', 5000.99),
(10, 'Gaming Chair', 15999.00);

create table orderDetails(
	order_id int,
    product_id int,
    quantity int,
    primary key(order_id , product_id),
    foreign key (order_id) references orders(order_id),
    foreign key (product_id) references products(product_id)
);

INSERT INTO OrderDetails (order_id, product_id, quantity) VALUES
(1, 1, 1),  -- Order 1: 1 Laptop
(1, 3, 2),  -- Order 1: 2 Headphones
(2, 2, 1),  -- Order 2: 1 Smartphone
(2, 5, 1),  -- Order 2: 1 Tablet
(3, 4, 1),  -- Order 3: 1 Smartwatch
(4, 6, 3),  -- Order 4: 3 Wireless Mice
(5, 7, 2),  -- Order 5: 2 Keyboards
(6, 8, 1),  -- Order 6: 1 Monitor
(7, 9, 1),  -- Order 7: 1 External Hard Drive
(8, 10, 2); -- Order 8: 2 Gaming Chairs

-- Blending

select  o.order_Id , o.order_date , c.customername , p.product_name , od.quantity,
	p.price , (od.quantity * p.price) as totalAmount
    from orders as o join customers as c on o.customer_Id = c.customerId
    join orderDetails as od on o.order_id = od.order_id
    join products as p on p.product_Id = od.product_id
    into outfile 'Path/file_name'
    fields terminated by ','  enclosed by '"' 
    lines terminated by '\n';
    ;
    
show variables like 'secure_file_priv';
    