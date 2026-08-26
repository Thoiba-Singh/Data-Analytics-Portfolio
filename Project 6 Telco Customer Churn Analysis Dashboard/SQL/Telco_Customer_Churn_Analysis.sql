create database telco;
use telco;
select `Customer Status`,
count(*) as `Customer Count` from telco
group by `Customer Status`
order by `Customer Count` desc;

select `Internet Type`,
count(*) as `Customer Count` from telco
where `Customer Status` = 'Churned'
group by `Internet Type`
order by `Customer Count` desc;

select `Internet Type`,
round(sum(`Total Revenue`)) as `Revenue` from telco
where `Customer Status` = 'Churned'
group by `Internet Type`
order by `Revenue` desc;

select `Churn Category`,
count(*) as Customer_Count from telco
where `Customer Status` = 'Churned'
group by `Churn Category`
order by Customer_Count desc;

select `Contract`,
count(*) as Customer_Count from telco
where `Customer Status` = 'Churned'
group by `Contract`
order by Customer_Count desc;

select `Payment Method`,
count(*) as Customer_Count from telco
where `Customer Status` = 'Churned'
group by `Payment Method`
order by Customer_Count desc;

select `Internet Service`,
round(sum(`Total Revenue`)) as `Revenue` from telco
where `Customer Status` = 'Churned'
group by `Internet Service`
order by `Revenue` desc;

select `Payment Method`,
round(sum(`Total Revenue`)) as total_revenue from telco
where `Customer Status` = 'Churned'
group by `Payment Method`
order by total_revenue desc;

select `Churn Reason`,
count(*) as ocurrance from telco
where `Customer Status` = 'Churned'
group by `Churn Reason`
order by ocurrance desc;

select `Contract`,
round(sum(`Total Revenue`)) as Revenue from telco
where `Customer Status` = 'Churned'
group by `Contract`
order by Revenue desc;

select `Internet Type`,
count(*) as total_customers from telco
where `Customer Status` = 'Churned'
group by `Internet Type`
order by total_customers desc;

select City,
round(sum(`Total Revenue`)) as total_revenue from telco
where `Customer Status` = 'Churned'
group by City
order by total_revenue desc
limit 5;

select `Customer Status`,
round(avg(`Monthly Charge`),2) as avg_monthly_charge from telco
group by `Customer Status`
order by avg_monthly_charge desc;

select `Customer Status`,
round(avg(`Tenure in Months`),2) as avg_tenure from telco
group by `Customer Status`
order by avg_tenure desc;

select `Contract`,
count(case when `Customer Status` = 'Churned' then 1 end) as churned_customers,
count(*) as total_customers,
round(count(case when `Customer Status` = 'Churned' then 1 end) * 100 / count(*),2) as churn_rate 
from telco
group by `Contract`
order by churn_rate desc;

select `Internet Service`,
count(case when `Customer Status` = 'Churned'  then 1 end) as churned_customers,
count(*) as total_customers,
round(count(case when `Customer Status` = 'Churned' then 1 end) * 100 / count(*),2) as churn_rate from telco
group by `Internet Service`
order by churn_rate desc;

select `Customer ID`,
`Monthly Charge`,
`Total Revenue`,
`Contract`,
`Internet Service` from telco
where `Customer Status` = 'Churned'
order by `Monthly Charge` desc
limit 10; 