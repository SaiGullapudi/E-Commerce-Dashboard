create database ecommerce;
use ecommerce;
select * from commerce limit 1000;

-- finding total revenue?
select round(sum(totalamount),2) as total_revenue
from commerce;
-- top 3 category that makes high revenue?
select category, round(sum(totalamount),0) as total_revenue
from commerce
group by category
order by total_revenue desc
limit 3;
-- top 2 payment method more used
select paymentmethod , count(*) as usage_count
from commerce
group by paymentmethod
limit 5;
-- how many rows are there in dataswt
select count(*)
from commerce;
-- year by sales
select year,round(sum(totalamount),0) as sales 
from commerce
group by year
order by year ;
-- country by sales
select country , round(sum(totalamount),0) as sales
from commerce
group by country;
-- top 3 brands sales in 2023
select brand ,round(sum(totalamount),0) as sales
from commerce
where year= 2023
group by brand
order by sales desc
limit 3;
-- order staus analysis
select orderstatus ,count(*) as usage_count
from commerce
group by orderstatus
order by usage_count;
-- which category items more  cancelled?
select category ,count(orderstatus) as cancelled
from commerce
where orderstatus ='cancelled'
group by category
order by cancelled desc;
-- monthly sales analysis

select month,round(sum(totalamount),0) as sales
from commerce
group by month
order by month;
