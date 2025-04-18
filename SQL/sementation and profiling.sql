create database customer_profiling;

use customer_profiling;

create table customers(
	customerId int primary key,
    firstName varchar(255),
    lastName varchar(255),
    email varchar(255),
    gender varchar(255),
    Age int,
    city varchar(255),
    state varchar(255)
);

create table transactions(
	transactionId int primary key,
    customerId int,
    transactionDate date,
    amount decimal(10,2),
    product varchar(100),
    category varchar(50)
);

INSERT INTO customers (customerId, firstName, lastName, email, gender, Age, city, state) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', 'Male', 30, 'New York', 'NY'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', 'Female', 28, 'Los Angeles', 'CA'),
(3, 'Robert', 'Brown', 'robert.brown@example.com', 'Male', 35, 'Chicago', 'IL'),
(4, 'Emily', 'Davis', 'emily.davis@example.com', 'Female', 32, 'Houston', 'TX'),
(5, 'Michael', 'Wilson', 'michael.wilson@example.com', 'Male', 40, 'Phoenix', 'AZ'),
(6, 'David', 'Martinez', 'david.martinez@example.com', 'Male', 29, 'San Antonio', 'TX'),
(7, 'Sarah', 'Taylor', 'sarah.taylor@example.com', 'Female', 27, 'San Diego', 'CA'),
(8, 'James', 'Anderson', 'james.anderson@example.com', 'Male', 33, 'Dallas', 'TX'),
(9, 'Laura', 'Thomas', 'laura.thomas@example.com', 'Female', 31, 'San Francisco', 'CA'),
(10, 'Daniel', 'Harris', 'daniel.harris@example.com', 'Male', 36, 'Austin', 'TX'),
(11, 'Sophia', 'Clark', 'sophia.clark@example.com', 'Female', 26, 'Miami', 'FL'),
(12, 'Ethan', 'Lewis', 'ethan.lewis@example.com', 'Male', 34, 'Denver', 'CO'),
(13, 'Olivia', 'Lee', 'olivia.lee@example.com', 'Female', 29, 'Boston', 'MA'),
(14, 'William', 'Walker', 'william.walker@example.com', 'Male', 38, 'Seattle', 'WA'),
(15, 'Ava', 'Hall', 'ava.hall@example.com', 'Female', 30, 'Atlanta', 'GA'),
(16, 'Benjamin', 'Allen', 'benjamin.allen@example.com', 'Male', 32, 'Charlotte', 'NC'),
(17, 'Mia', 'Young', 'mia.young@example.com', 'Female', 28, 'Detroit', 'MI'),
(18, 'Lucas', 'King', 'lucas.king@example.com', 'Male', 35, 'Las Vegas', 'NV'),
(19, 'Ella', 'Scott', 'ella.scott@example.com', 'Female', 27, 'Orlando', 'FL'),
(20, 'Henry', 'Adams', 'henry.adams@example.com', 'Male', 39, 'Philadelphia', 'PA'),
(21, 'John1', 'Doe1', 'john.doe@e1xample.com', 'Male', 20, 'New York', 'NY');

INSERT INTO transactions (transactionId, customerId, transactionDate, amount, product, category) VALUES
(101, 1, '2024-03-10', 150.75, 'Smartphone', 'Electronics'),
(102, 2, '2024-03-12', 89.99, 'Running Shoes', 'Sports'),
(103, 3, '2024-03-14', 45.50, 'Bluetooth Speaker', 'Electronics'),
(104, 4, '2024-03-16', 120.00, 'Handbag', 'Fashion'),
(105, 5, '2024-03-18', 300.00, 'Laptop', 'Electronics'),
(106, 6, '2024-03-20', 75.20, 'Backpack', 'Accessories'),
(107, 7, '2024-03-22', 99.99, 'Wireless Earbuds', 'Electronics'),
(108, 8, '2024-03-24', 150.00, 'Watch', 'Fashion'),
(109, 9, '2024-03-26', 250.75, 'Tablet', 'Electronics'),
(110, 10, '2024-03-28', 49.99, 'Sunglasses', 'Fashion'),
(111, 11, '2024-03-30', 120.50, 'Gaming Mouse', 'Gaming'),
(112, 12, '2024-04-01', 199.99, 'Monitor', 'Electronics'),
(113, 13, '2024-04-03', 60.00, 'Jeans', 'Clothing'),
(114, 14, '2024-04-05', 29.99, 'T-shirt', 'Clothing'),
(115, 15, '2024-04-07', 550.00, 'Smart TV', 'Electronics'),
(116, 16, '2024-04-09', 199.99, 'Headphones', 'Electronics'),
(117, 17, '2024-04-11', 25.50, 'Cookware Set', 'Home'),
(118, 18, '2024-04-13', 89.99, 'Running Shoes', 'Sports'),
(119, 19, '2024-04-15', 150.00, 'Perfume', 'Beauty'),
(120, 20, '2024-04-17', 79.99, 'Wireless Keyboard', 'Electronics');

-- Customer Segmentation
select 
	case
		when age < 25 then 'YOUNG'
        when age between 25 and 40 then 'MIDDLE AGE'
        else 'SENIOR'
	End as Age_Segment,
    count(*) as customerCount
from customers
group by Age_Segment
;

-- Customer Profiling
select 
	case
		when age < 25 then 'YOUNG'
        when age between 25 and 40 then 'MIDDLE AGE'
        else 'SENIOR'
	End as Age_Segment , avg(amount) as average_amount , count(*) as tranaction_Count
	from customers c
    left Join transactions t on c.customerId = t.customerId
    group by age_Segment
; 

	