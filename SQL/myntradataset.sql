create database myntra;

use myntra;

select * from products;

select brand_name , rating , marked_price from products;

select marked_price , discounted_price , marked_price-discounted_price as discounted_amount FROM products;

select marked_price , discounted_price , round(((marked_price-discounted_price)/marked_price)*100,2)  as discount_percent FROM products;

select count(distinct(brand_name)) from products;

select distinct(product_tag) from products where brand_tag = 'adidas';

select distinct * from products
	where brand_name = 'adidas' and discounted_price > 5000;
    
select * from products 
	where (brand_name = 'adidas' or brand_name = 'nike') and (discounted_price > 5000 and discounted_price < 10000);
    
select * from products
	where brand_name in ('adidas' , 'nike') and discounted_price between 5000 and 10000;
    
select * from products where product_tag = 'jackets' and brand_name not in ('adidas' , 'nike') and discounted_price between 5000 and 10000 ;

select max(discounted_price) , max(marked_price) , min(discounted_price) , min(marked_price) , avg(discounted_price) , avg(marked_price) from products;