create database zepto_sql_project;
create table zepto(
category varchar(120),
name varchar (150) not null,
mrp numeric (8,2),
discountPercent numeric (5,2),
availableQuantity integer,
discountSellingPrice numeric(8,2),
weightInGms integer,
outOfStock boolean,
quantity integer
);
SELECT * FROM zepto_sql_project.zepto
limit 10;

#total number of data entries
SELECT COUNT(*) FROM zepto

#null data
SELECT *
FROM zepto 
WHERE category is null 
or
name is null 
or
mrp is null 
or
discountPercent is null 
or
availableQuantity is null 
or
discountSellingPrice is null 
or
WeightInGms is null 
or
outOfStock is null 
or
quantity is null ;

#different product category
select distinct category 
from zepto 
order by category

#product in stock vs outof stock
select outOfStock ,count(outOfStock) #0= false ,1=true
from zepto 
group by OutOfStock

#product present multiple times
select name,count(name) 
from zepto
group by name
having count(name)>1
order by count(name) desc

#data cleaning

#product with price 0
select * from zepto 
where mrp =0 or discountSellingPrice=0

DELETE from zepto where mrp=0
SET SQL_SAFE_UPDATES = 0;

# convert paise into ruppees
update zepto 
set mrp=mrp	/100.0
update zepto
set discountSellingPrice=discountSellingPrice/100.0

select mrp,discountSellingPrice from zepto
limit 10;

#find the top 10 best value product based onn discount percentage
select distinct name ,discountPercent
from zepto 
order by discountPercent desc
limit 10

#what are the product with high mrp but out of stock 
select distinct name,mrp
from zepto
where outOfStock=1 
order by mrp desc

#calculate estimated revenue for each category
select category,sum(discountSellingPrice*availableQuantity)as total_revenue
from zepto 
group by category
order by total_revenue

#find all products where mrp is greater than 500 and discount is less then 10%
select distinct name ,mrp ,discountPercent
from zepto 
where mrp>500.00 AND  discountPercent<10.00
order by mrp desc

# identifying the top 5 categories offering the highest average discount percentage  
select category ,round(avg(discountPercent),2)
from zepto 
group by category
order by avg(discountPercent) desc
limit 5

#find the price per gram for products above 100g and sort by best value
select distinct name,weightInGms,discountSellingPrice,round(discountSellingPrice/weightInGms,2) as price_per_gram 
from zepto
where weightInGms>=100
order by price_per_gram

#group the product into categories like low ,medium ,bulk
select distinct name ,weightInGms,
case when weightInGms<1000 then 'low'
when weightInGms<5000 then 'medium'
else 'bulk'
end as weight_category
from zepto

#find the total inventory weight per category
select category,sum(weightInGms*availableQuantity) as total_weight
from zepto
group by category
order by total_weight 