use myntra;

select * from products;

select max(marked_price) , min(marked_price) , avg(marked_price) ,
 max(discounted_price) , min(discounted_price) , avg(discounted_price) 
 from products 
 where brand_name = 'adidas';
 
 select sum(discounted_price*rating_count) as total_revenue from products where product_tag = 'tshirts';

-- sorting
select * from products order by discounted_price desc;

select * from products order by discounted_price desc limit 5;

select * from products where product_tag = 'tshirts' order by rating*rating_count desc;

-- first attribut leave the number of values and second displays the number of values
select * from products order by discounted_price desc limit 5,1;

select * from products 
	where brand_tag='nike' and rating!=0 
    order by (rating*rating_count) asc limit 1;
    
select * from products 
	where brand_name in ('adidas','nike') and product_tag='tshirts' and discounted_price between 1000 and 1200 order by brand_name asc;