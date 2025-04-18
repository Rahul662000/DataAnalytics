use users;

create table products(
	productId int primary key,
    productName varchar(255),
    price decimal(10,2)
	
);

INSERT INTO products (productId, productName, price) VALUES
(1, 'Laptop', 999.99),
(2, 'Smartphone', 699.49),
(3, 'Wireless Headphones', 199.99),
(4, 'Gaming Mouse', 49.99),
(5, 'Mechanical Keyboard', 129.99);

select * from products;

select * from products where price = (select max(price) from products)