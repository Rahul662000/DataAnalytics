use user_1;

create table customertable(
	customer_id int primary key,
    customer_name varchar(100),
    email varchar(100)
);

create table orders(
	order_id int primary key,
    order_date date,
    customer_id int,
    total_amount decimal(10,2)
);

INSERT INTO customertable (customer_id, customer_name, email)  
VALUES  
(1, 'John Doe', 'john.doe@example.com'),  
(2, 'Jane Smith', 'jane.smith@example.com'),  
(3, 'Michael Johnson', 'michael.j@example.com'),  
(4, 'Emily Davis', 'emily.d@example.com'),  
(5, 'David Wilson', 'david.w@example.com');

INSERT INTO orders (order_id, order_date, customer_id, total_amount)  
VALUES  
(101, '2024-03-01', 1, 150.75),  
(102, '2024-03-02', 2, 250.50),  
(103, '2024-03-03', 1, 100.00),  
(104, '2024-03-04', 3, 300.25),  
(105, '2024-03-05', 4, 450.00),  
(106, '2024-03-06', 2, 175.00),  
(107, '2024-03-07', 5, 200.00),  
(108, '2024-03-08', 3, 220.00),  
(109, '2024-03-09', 4, 500.00),  
(110, '2024-03-10', 5, 125.75);

select * from orders;

select customertable.customer_name , orders.order_id , orders.order_date , orders.total_amount
from customertable 
left join orders
on customertable.customer_id = orders.customer_id;

select customertable.customer_name , orders.order_id , orders.order_date , orders.total_amount
from customertable 
right join orders
on customertable.customer_id = orders.customer_id;