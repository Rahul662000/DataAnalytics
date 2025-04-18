create database sentiment_Analysis;

use sentiment_Analysis;

select * from sample_data_insert;

select user_location , count(*) as tweet_count
from sample_data_insert
group by user_location
order by tweet_count desc
;

