create table sales(
	salesId int primary key,
    productName varchar(255),
    salesAmount decimal(10,2)
);

INSERT INTO Sales (salesId, productName, salesAmount) VALUES
(1, 'Laptop', 75000.50),
(2, 'Laptop', 75000.50),  -- Complete duplicate
(3, 'Smartphone', 45000.75),
(4, 'Smartphone', 45000.75),  -- Complete duplicate
(5, 'Tablet', 25000.00),
(6, 'Tablet', 25000.00),  -- Complete duplicate
(7, 'Smartwatch', 15000.25),
(8, 'Smartwatch', 15000.25);  -- Complete duplicate

truncate table sales;

select * from sales;

-- Removing Duplicate 
delete s1 from sales s1 join sales s2 on s1.productName = s2.productName and s1.salesAmount = s2.salesAmount
where s1.salesId > s2.salesId; 

-- Aggregation
select ProductName , sum(salesAmount) as totalSales 
from sales
group by ProductName;

select * from sales where(
	productName , salesAmount
) in (
	select productName , salesAmount
    from sales
    group by productName , salesAmount
    Having count(*) > 1
);