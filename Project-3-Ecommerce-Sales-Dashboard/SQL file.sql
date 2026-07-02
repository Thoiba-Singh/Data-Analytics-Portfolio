create database ecommerce_project;
use ecommerce_project;

Create Table sales(
TransactionNo varchar(20),
Date date,
ProductNo varchar(20),
ProductName varchar(255),
Price decimal(10,2),
Quantity int,
CustomerNo varchar(20),
Country varchar(100)); 

drop table sales;

Create Table sales(
TransactionNo varchar(20),
Date varchar(20),
ProductNo varchar(20),
ProductName varchar(255),
Price decimal(10,2),
Quantity int,
CustomerNo varchar(20),
Country varchar(100)); 

select * from sales 
limit 10;

select round(Sum(Price * Quantity),2) as Total_Revenue from sales;

select count(distinct CustomerNo) as Total_Customers from sales;

select Country,round(sum(Price * Quantity),2) as Revenue from sales
group by Country
Order by Revenue Desc
Limit 10;

select Country, count(distinct CustomerNo) as Customers from sales
group by Country 
order by Customers desc;

select ProductName, round(sum(Price * Quantity),2) as revenue from sales
group by ProductName
order by Revenue desc
limit 10;

select ProductName, sum(Quantity) as Quantity_Sold from sales
group by ProductName
order by Quantity_sold desc
limit 10;

use ecommerce_project;

select date_format(str_to_date(Date, '%d-%m-%Y'), '%M') as Month,
round(sum(Price * Quantity),2) as Revenue from sales
group by Month
order by Month;

select date, sum(Price * Quantity) as Revenue from sales
group by date
order by Revenue desc
limit 10;

select CustomerNo, round(sum(Price * Quantity),2) as Total_Spent from sales
group by CustomerNo
order by Total_Spent desc
limit 10;

select ProductName, count(distinct CustomerNo) as Highest_Bought from sales
group by ProductName
order by Highest_Bought desc
limit 5; 