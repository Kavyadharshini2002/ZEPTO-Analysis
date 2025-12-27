drop table if exists zepto;

create table zepto(
sku_id serial primary key,
category VARCHAR(120),
NAME VARCHAR(150) NOT NULL,
MRP NUMERIC(8,2),
Discountpercent NUMERIC(5,2),
Availablequantity INTEGER,
Discountedsellingprice NUMERIC(8,2),
WeightinGms INTEGER,
Outofstock BOOLEAN,
quantity INTEGER
);

--data exploration

--count of rows
select count(*)from zepto;

--sample data
select * from zepto
limit 10;

--null values
select*from zepto
where name is null
or
category is null
or
mrp is null
or
discountpercent is null
or
discountedsellingprice is null
or
weightingms is null
or
outofstock is null
or
quantity is null;

--different product categories
select distinct category
from zepto
order by category;