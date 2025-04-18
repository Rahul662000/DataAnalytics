-- customer table
create table customers1 (
	customerId int primary key,
    customerName varchar(255)
);

Insert into customers1 (customerId , customerName) values
(1,'Alisce'),
(2,'Bob'),
(3,'Charlie');
Insert into customers1 values(4,'Rahul');

create table orders1(
	orderId int primary key,
    customerId int,
    orderDate date,
    foreign key (customerId) references customers1(customerId)
);

INSERT INTO orders1 (orderId, customerId, orderDate) 
VALUES 
(101, 1, '2024-03-01'),
(102, 2, '2024-03-05'),
(103, 1, '2024-03-10'),
(104, 3, '2024-03-15'),
(105, 2, '2024-03-20');

select * from customers1;

select c.customerId , c.customerName , ifnull(totalOrders,0) as totalOrders
from customers1 as c
left join (
	select customerId , count(orderId) AS totalOrders
    from orders1 group by customerId
) as customersOrders on c.customerId = customersOrders.customerId;


create table customers12 (
	customerId int primary key,
    customerName varchar(255)
);

Insert into customers12 (customerId , customerName) values
(1,'Alisce'),
(2,'Bob'),
(3,'Charlie');

create table products(
	produtId int primary key,
    productName varchar(255)
);

insert into products values (101,'Product1') , (102,'Product2') , (103,'Product3'); 

create table orders2(
	orderId int primary key,
    customerId int,
    productId int,
    quantity int,
    foreign key (customerId) references customers12(customerId),
    foreign key (productId) references products(produtId) 
);

INSERT INTO orders2 VALUES 
(1, 1, 101, 2),  -- Alice ordered 2 units of Product1
(2, 2, 102, 1),  -- Bob ordered 1 unit of Product2
(3, 3, 103, 5),  -- Charlie ordered 5 units of Product3
(4, 1, 103, 3),  -- Alice ordered 3 units of Product3
(5, 2, 101, 4);  -- Bob ordered 4 units of Product1

select c.customerId , c.customerName , p.produtId , p.productName , ifnull(TotalQuantity , 0) as TotalQuantities
from customers12 as c
cross join products as p
left join (
	select customerId , productId , sum(quantity) as totalQuantity
    from orders2 group by customerId , productId
) as customerProductOrders on c.customerId = customerProductOrders.customerId;