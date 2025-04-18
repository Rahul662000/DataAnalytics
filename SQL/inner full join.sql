create table products(
	product_id int primary key,
    product_name varchar(255),
    supplier_id int,
    cateogry_id int,
    unit varchar(50),
    price decimal(10,2)
);

INSERT INTO products (product_id, product_name, supplier_id, cateogry_id, unit, price)  
VALUES  
(1, 'Laptop', 1, 1, 'Piece', 75000.00),  
(2, 'Mouse', 1, 1, 'Piece', 1200.00),  
(3, 'Keyboard', 1, 1, 'Piece', 1500.00),  
(4, 'Monitor', 2, 1, 'Piece', 12000.00),  
(5, 'Desk Chair', 3, 2, 'Piece', 8000.00),  
(6, 'Office Table', 3, 2, 'Piece', 15000.00),  
(7, 'Coffee Mug', 4, 3, 'Piece', 300.00),  
(8, 'Notebook', 4, 3, 'Piece', 100.00),  
(9, 'Pen Set', 4, 3, 'Piece', 250.00),  
(10, 'Wireless Router', 2, 1, 'Piece', 4500.00),  
(11, 'HDMI Cable', 1, 1, 'Piece', 600.00),  
(12, 'USB Hub', 1, 1, 'Piece', 900.00),  
(13, 'Printer', 2, 1, 'Piece', 18000.00),  
(14, 'Scanner', 2, 1, 'Piece', 10000.00),  
(15, 'Desk Lamp', 3, 2, 'Piece', 1500.00),  
(16, 'Whiteboard', 3, 2, 'Piece', 3500.00),  
(17, 'Wireless Mouse', 1, 1, 'Piece', 1800.00),  
(18, 'Bluetooth Keyboard', 1, 1, 'Piece', 2000.00),  
(19, 'External SSD', 2, 1, 'Piece', 8000.00),  
(20, 'Power Bank', 2, 1, 'Piece', 2500.00),  
(21, 'Desk Fan', 3, 2, 'Piece', 2200.00),  
(22, 'Projector', 2, 1, 'Piece', 30000.00),  
(23, 'Laptop Stand', 1, 1, 'Piece', 1200.00),  
(24, 'Backpack', 4, 3, 'Piece', 3500.00),  
(25, 'Mouse Pad', 4, 3, 'Piece', 400.00),  
(26, 'Wireless Charger', 2, 1, 'Piece', 1800.00),  
(27, 'Cable Organizer', 1, 1, 'Piece', 500.00),  
(28, 'Gaming Headset', 2, 1, 'Piece', 7500.00),  
(29, 'Speakers', 2, 1, 'Piece', 6000.00),  
(30, 'Graphics Card', 2, 1, 'Piece', 45000.00),  
(31, 'Laptop Cooling Pad', 1, 1, 'Piece', 2200.00),  
(32, 'Desk Drawer', 3, 2, 'Piece', 7500.00),  
(33, 'File Cabinet', 3, 2, 'Piece', 15000.00),  
(34, 'Office Sofa', 3, 2, 'Piece', 45000.00),  
(35, 'Projector Screen', 2, 1, 'Piece', 7000.00),  
(36, 'Smartphone', 5, 1, 'Piece', 55000.00),  
(37, 'Tablet', 5, 1, 'Piece', 35000.00),  
(38, 'Smartwatch', 5, 1, 'Piece', 12000.00),  
(39, 'Fitness Band', 5, 1, 'Piece', 6000.00),  
(40, 'Smart Glasses', 5, 1, 'Piece', 15000.00),  
(41, 'Ergonomic Chair', 3, 2, 'Piece', 12000.00),  
(42, 'Footrest', 3, 2, 'Piece', 3500.00),  
(43, 'Wireless Earbuds', 5, 1, 'Piece', 8000.00),  
(44, 'VR Headset', 5, 1, 'Piece', 25000.00),  
(45, 'Noise Cancelling Headphones', 5, 1, 'Piece', 15000.00),  
(46, 'E-Reader', 5, 1, 'Piece', 12000.00),  
(47, 'Paper Shredder', 2, 1, 'Piece', 4500.00),  
(48, 'Pen Drive', 1, 1, 'Piece', 800.00),  
(49, 'Power Strip', 1, 1, 'Piece', 1500.00),  
(50, 'Water Bottle', 4, 3, 'Piece', 500.00);  

select * from products;

create table categories(
	category_id int primary key,
    category_name varchar(255),
    description text
);

INSERT INTO categories (category_id, category_name, description)  
VALUES  
(1, 'Electronics', 'Electronic products including laptops, smartphones, accessories'),  
(2, 'Furniture', 'Office and home furniture including chairs, desks, cabinets'),  
(3, 'Stationery', 'Office supplies such as notebooks, pens, organizers'),  
(4, 'Clothing', 'Apparel including shirts, pants, jackets'),  
(5, 'Footwear', 'Shoes, sandals, other types of footwear'),  
(6, 'Beauty Products', 'Skincare, makeup products'),  
(7, 'Sports Equipment', 'Sporting goods such as bats, balls, protective gear'),  
(8, 'Toys', 'Children\'s toys, games'),  
(9, 'Groceries', 'Food, beverages including snacks, drinks'),  
(10, 'Automotive', 'Car accessories, maintenance products');  

select * from categories;

select product_id , product_name , category_name
from products
inner join categories on products.cateogry_id = categories.category_id;

create table customers(
	customer_id int primary key,
    customer_name varchar(255),
    contact_name varchar(255),
    address varchar(255),
    city varchar(255),
    postalcode varchar(255),
    country varchar(255)
);

INSERT INTO customers (customer_id, customer_name, contact_name, address, city, postalcode, country)  
VALUES  
(1, 'Tech Solutions', 'John Doe', '123 Main St', 'New York', '10001', 'USA'),  
(2, 'Global Traders', 'Jane Smith', '456 Market St', 'Los Angeles', '90001', 'USA'),  
(3, 'QuickMart', 'Emily Davis', '789 Elm St', 'Chicago', '60601', 'USA'),  
(4, 'Green World', 'Michael Johnson', '321 Oak St', 'Houston', '77001', 'USA'),  
(5, 'Best Electronics', 'David Wilson', '567 Pine St', 'San Francisco', '94101', 'USA'),  
(6, 'Smart Supplies', 'Sarah Brown', '654 Willow St', 'Seattle', '98101', 'USA'),  
(7, 'TradeConnect', 'James Lee', '890 Maple St', 'Dallas', '75201', 'USA'),  
(8, 'TechPros', 'Anna White', '234 Cedar St', 'Austin', '73301', 'USA'),  
(9, 'EcoGoods', 'Robert Martin', '456 Birch St', 'Denver', '80201', 'USA'),  
(10, 'ValueMart', 'Laura Garcia', '678 Walnut St', 'Phoenix', '85001', 'USA'),  
(11, 'CityMart', 'Oliver Johnson', '120 Lake St', 'Boston', '02101', 'USA'),  
(12, 'Nova Traders', 'Emma Brown', '345 Hill St', 'Miami', '33101', 'USA'),  
(13, 'Home Supplies', 'William Taylor', '678 Forest St', 'Atlanta', '30301', 'USA'),  
(14, 'Big Deals', 'Sophia Martinez', '910 River St', 'Las Vegas', '89101', 'USA'),  
(15, 'Elite Mart', 'Mason Anderson', '112 Mountain St', 'Nashville', '37201', 'USA'),  
(16, 'Urban Tech', 'Isabella Thomas', '234 Ocean St', 'San Diego', '92101', 'USA'),  
(17, 'Daily Essentials', 'Ethan Harris', '789 Valley St', 'San Antonio', '78201', 'USA'),  
(18, 'Fashion Hub', 'Ava Thompson', '567 Sunset St', 'Orlando', '32801', 'USA'),  
(19, 'Global Fashion', 'Lucas White', '345 Cloud St', 'Minneapolis', '55401', 'USA'),  
(20, 'Prime Traders', 'Mia Scott', '456 Moon St', 'Detroit', '48201', 'USA'),  
(21, 'Style Arena', 'Noah King', '678 Sky St', 'Charlotte', '28201', 'USA'),  
(22, 'Market Central', 'Liam Walker', '234 Star St', 'Portland', '97201', 'USA'),  
(23, 'Elite Supplies', 'Amelia Lewis', '345 Planet St', 'Philadelphia', '19101', 'USA'),  
(24, 'Eco Mart', 'James Hall', '567 Earth St', 'Austin', '73301', 'USA'),  
(25, 'Super Bazaar', 'Benjamin Allen', '123 Jupiter St', 'Tampa', '33601', 'USA'),  
(26, 'Global Market', 'Charlotte Young', '789 Mars St', 'Newark', '07101', 'USA'),  
(27, 'Urban Market', 'Daniel Hernandez', '567 Neptune St', 'Indianapolis', '46201', 'USA'),  
(28, 'Daily Mart', 'Evelyn Robinson', '345 Venus St', 'Jacksonville', '32201', 'USA'),  
(29, 'Trade Smart', 'Michael Wright', '234 Mercury St', 'Columbus', '43201', 'USA'),  
(30, 'Urban Store', 'Emily Lopez', '123 Pluto St', 'Baltimore', '21201', 'USA'),  
(31, 'Trendy Deals', 'Logan Hill', '789 Saturn St', 'Milwaukee', '53201', 'USA'),  
(32, 'Fashion Hub', 'Zoe Green', '345 Uranus St', 'Raleigh', '27601', 'USA'),  
(33, 'Eco World', 'Henry Adams', '567 Sun St', 'Memphis', '38101', 'USA'),  
(34, 'Green Supplies', 'Jack Cooper', '456 Moonlight St', 'Louisville', '40201', 'USA'),  
(35, 'Tech Hub', 'Sophie Baker', '678 Starlight St', 'Kansas City', '64101', 'USA'),  
(36, 'City Essentials', 'Jacob Murphy', '234 Twilight St', 'Fresno', '93701', 'USA'),  
(37, 'Best Deals', 'Ella Reed', '345 Dream St', 'Sacramento', '95801', 'USA'),  
(38, 'Home Base', 'Luke Howard', '567 Sunset St', 'Mesa', '85201', 'USA'),  
(39, 'Market Plus', 'Lily Carter', '678 Forest St', 'Omaha', '68101', 'USA'),  
(40, 'Elite Goods', 'Owen Scott', '123 Sky St', 'Colorado Springs', '80901', 'USA'),  
(41, 'Home & More', 'Aria Baker', '789 Night St', 'Long Beach', '90801', 'USA'),  
(42, 'Prime Supplies', 'Aiden Russell', '456 Sunlight St', 'Virginia Beach', '23401', 'USA'),  
(43, 'Market Express', 'Chloe Evans', '567 Shadow St', 'Miami Beach', '33101', 'USA'),  
(44, 'Global Goods', 'Eli Griffin', '234 Star St', 'Oakland', '94601', 'USA'),  
(45, 'Best Buys', 'Luna Rivera', '345 Storm St', 'Minneapolis', '55401', 'USA'),  
(46, 'Daily Stop', 'Levi Rogers', '678 Wind St', 'Honolulu', '96801', 'USA'),  
(47, 'Urban Stop', 'Scarlett James', '123 Rain St', 'Anaheim', '92801', 'USA'),  
(48, 'Home Mart', 'Jack Cook', '456 Thunder St', 'St. Louis', '63101', 'USA'),  
(49, 'City Supplies', 'Sophia Bell', '567 Fire St', 'Corpus Christi', '78401', 'USA'),  
(50, 'Prime Deals', 'James Carter', '234 Ice St', 'New Orleans', '70101', 'USA');  

create table orderss(
	order_id int primary key,
    customer_id int,
    employee_id int,
    order_date date,
    shipper_id int
);

INSERT INTO orderss (order_id, customer_id, employee_id, order_date, shipper_id) VALUES
(1, 1, 101, '2025-01-15', 201),
(2, 2, 102, '2025-02-01', 202),
(3, 3, 103, '2025-02-20', 203),
(4, 4, 104, '2025-03-05', 204),
(5, 5, 105, '2025-03-12', 205),
(6, 6, 106, '2025-03-18', 206),
(7, 7, 107, '2025-03-21', 207),
(8, 8, 108, '2025-03-25', 208),
(9, 9, 109, '2025-04-01', 209),
(10, 10, 110, '2025-04-10', 210),
(11, 11, 101, '2025-04-12', 201),
(12, 12, 102, '2025-04-15', 202),
(13, 13, 103, '2025-04-18', 203),
(14, 14, 104, '2025-04-22', 204),
(15, 15, 105, '2025-04-28', 205),
(16, 16, 106, '2025-05-01', 206),
(17, 17, 107, '2025-05-05', 207),
(18, 18, 108, '2025-05-10', 208),
(19, 19, 109, '2025-05-14', 209),
(20, 20, 110, '2025-05-20', 210),
(21, 21, 101, '2025-05-25', 201),
(22, 22, 102, '2025-05-28', 202),
(23, 23, 103, '2025-06-01', 203),
(24, 24, 104, '2025-06-04', 204),
(25, 25, 105, '2025-06-07', 205),
(26, 26, 106, '2025-06-12', 206),
(27, 27, 107, '2025-06-14', 207),
(28, 28, 108, '2025-06-18', 208),
(29, 29, 109, '2025-06-22', 209),
(30, 30, 110, '2025-06-26', 210),
(31, 31, 101, '2025-06-28', 201),
(32, 32, 102, '2025-07-01', 202),
(33, 33, 103, '2025-07-05', 203),
(34, 34, 104, '2025-07-08', 204),
(35, 35, 105, '2025-07-12', 205),
(36, 36, 106, '2025-07-16', 206),
(37, 37, 107, '2025-07-20', 207),
(38, 38, 108, '2025-07-23', 208),
(39, 39, 109, '2025-07-27', 209),
(40, 40, 110, '2025-07-30', 210),
(41, 41, 101, '2025-08-01', 201),
(42, 42, 102, '2025-08-05', 202),
(43, 43, 103, '2025-08-08', 203),
(44, 44, 104, '2025-08-12', 204),
(45, 45, 105, '2025-08-16', 205),
(46, 46, 106, '2025-08-20', 206),
(47, 47, 107, '2025-08-23', 207),
(48, 48, 108, '2025-08-27', 208),
(49, 49, 109, '2025-08-30', 209),
(50, 50, 110, '2025-09-01', 210);

select customers.customer_name, orderss.order_id
from customers
full join orderss on customers.customer_id = orders.customer_id
order by customers.customer_name;