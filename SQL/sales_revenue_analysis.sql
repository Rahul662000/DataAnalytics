create database sales_data;
use sales_data;

create table revenue_analysis(
	orderNumber int primary key,
    quantityOrdered int,
    priceEach decimal(10,2),
    orderLineNumber int,
    sales decimal(10,2),
    orderDate datetime,
    status varchar(255),
    QTR_ID int,
    month_id int,
    year_id int,
    productLine varchar(255),
    msrp int,
    product_code varchar(255),
    customerName varchar(255),
    phone int,
    addressLine1 varchar(255),
    addressLine2 varchar(255),
    city varchar(255),
    state varchar(255),
    postalCode int,
    country varchar(255),
    territory varchar(255),
    contactLastName varchar(255),
    contactFirsttName varchar(255),
    dealSize varchar(255)
);

select * from revenue_analysis_large_dataset;

select product_code ,
	sum(sales) as totalRevenue
from revenue_analysis_large_dataset
group by product_code
order by totalRevenue desc
;

select year_id,
	month_id ,
	sum(sales) as monthly_sales
from revenue_analysis_large_dataset
group by year_id , month_id
order by year_id , month_id;

select customerName ,
	sum(sales) as totalSpending
from revenue_analysis_large_dataset
group by customerName
order by totalSpending desc limit 10;