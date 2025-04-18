-- Slower SQL query
select * from salesData where year(date) = 2025;

-- Indexing for faster data retrival 
create index idx_date on salesData(Date);

-- query rewriting for better performance 
select date , sum(salesAmount) as totalSales
from salesData
where date between '2025-03-20' and '2025-04-05'
group by date;

select date , salesAmount
from salesData
where date between '2025-03-01' and '2025-03-31';

select date, salesAmount from salesData;

