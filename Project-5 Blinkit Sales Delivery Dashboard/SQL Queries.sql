create database blinkit_project;
use blinkit_project;

select * from blinkit_orders limit 10;

select round(sum(order_total), 2) as total_revenue from blinkit_orders;

select payment_method,
count(*) as total_orders from blinkit_orders 
group by payment_method
order by total_orders desc;

select delivery_status,
count(*) as total_orders from blinkit_orders
group by delivery_status
order by total_orders desc;

select customer_id,
count(*) as total_orders from blinkit_orders
group by customer_id
having count(*) > 1
order by total_orders desc;

select store_id,
count(*) as total_orders from blinkit_orders
group by store_id
order by total_orders desc;

select * from blinkit_orders where payment_method = 'Cash';

select payment_method,
round(sum(order_total),1) as total_revenue from blinkit_orders
group by payment_method
order by total_revenue desc;

select * from blinkit_orders where order_total > 3000;

select * from blinkit_orders
where payment_method = 'Cash' and
order_total > 3000; 

select * from blinkit_orders 
where payment_method = 'UPI' and
order_total > 4000;

select * from blinkit_orders
where payment_method = 'Card' and
delivery_status = 'Slightly Delayed'; 

select * from blinkit_orders
where payment_method = 'Wallet' and
order_total > 3500 and
delivery_status = 'On Time';

select delivery_status,
round(sum(order_total),1) as total_revenue from blinkit_orders
group by delivery_status
order by total_revenue desc;

select payment_method,
count(*) as total_orders from blinkit_orders
group by payment_method
order by total_orders desc;


select * from blinkit_orders
where payment_method = 'UPI' and 
delivery_status = 'On Time' and
order_total > 4500;

select payment_method,
round(avg(order_total),2) as average_revenue from blinkit_orders
group by payment_method
order by average_revenue desc;

select * from blinkit_orders where order_total > 5000;

select payment_method,
count(*) as total_orders from blinkit_orders
where delivery_status = 'Slightly Delayed' or 'Significantly Delayed'
group by payment_method
order by total_orders desc;

select * from blinkit_orders
where payment_method = 'Card' and
order_total > 4000 and
delivery_status = 'On Time';

select Customer_id,
round(sum(order_total),1) as total_spending from blinkit_orders
group by Customer_id
order by total_spending desc
limit 5;

select payment_method,
count(*) as total_orders,
sum(order_total) as total_revenue,
avg(order_total) as avg_revenue from blinkit_orders
where delivery_status = 'On Time' and order_total > 3000
group by payment_method
order by total_revenue desc, avg_revenue desc
limit 3;

select 
store_id,
round(sum(order_total),1) as Total_Revenue,
count(order_total) as Total_Orders from blinkit_orders
group by store_id
order by Total_Revenue desc, Total_Orders desc
limit 5;

select
delivery_status,
count(*) as Total_Orders,
round(sum(order_total),1) as Total_Revenue,
avg(order_total) as Average_Revenue from blinkit_orders
group by delivery_status
order by Total_Revenue desc, Total_Orders desc, Average_Revenue desc;

select customer_id,
round(sum(order_total),1) as total_revenue from blinkit_orders
group by customer_id
having total_revenue > 400000
order by total_revenue desc;

select delivery_status,
count(*) as total_orders from blinkit_orders
group by delivery_status
having total_orders > 150
order by total_orders;

select store_id,
round(sum(order_total),1) as total_revenue,
count(*) as total_orders from blinkit_orders
group by store_id
having total_revenue > 8000
order by total_revenue desc, total_orders desc;

select payment_method,
round(sum(order_total),1) as total_revenue,
count(*) as total_orders from blinkit_orders
group by payment_method
having total_orders > 80 and total_revenue > 300000
order by total_revenue desc, total_orders desc;

select customer_id,
count(*) as total_orders from blinkit_orders
group by customer_id
order by total_orders desc
limit 5;

select store_id,
delivery_status,
round(sum(order_total),1) as total_revenue from blinkit_orders
where delivery_status = 'On Time'
group by store_id
order by total_revenue desc
limit 5;

select delivery_status,
avg(order_total) as average_revenue,
count(*) as total_orders from blinkit_orders
group by delivery_status
having average_revenue > 2200 and total_orders > 100
order by average_revenue desc, total_orders desc;

select payment_method,
count(*) as total_orders,
round(sum(order_total),1) as total_revenue,
round(avg(order_total),1) as average_revenue from blinkit_orders
group by payment_method
having total_revenue > 250000 and average_revenue > 2000
order by total_revenue desc, average_revenue desc;

select customer_id,
count(*) as total_orders,
round(sum(order_total),1) as total_spending,
round(avg(order_total),1) as average_spending from blinkit_orders
group by customer_id
order by total_spending desc
limit 5;

select delivery_status,
count(*) as total_orders,
round(sum(order_total),1) as total_revenue,
round(avg(order_total),1) as average_revenue from blinkit_orders
group by delivery_status
order by average_revenue desc;

select store_id,
count(distinct customer_id) as unique_customer,
round(sum(order_total),1) as total_revenue from blinkit_orders
group by store_id
order by total_revenue desc
limit 5;

select customer_id,
count(*) as total_orders,
round(sum(order_total),1) as total_spending from blinkit_orders
group by customer_id
having total_orders > 2
order by total_spending desc;

select store_id,
count(*) as total_orders,
round(avg(order_total),1) as average_revenue from blinkit_orders
group by store_id
having count(*) >= 10
order by average_revenue desc
limit 5;

select customer_id,
count(*) as different_stores from blinkit_orders
group by customer_id
order by different_stores desc
limit 5;

select payment_method,
count(*) as total_orders,
round(sum(order_total),1) as total_revenue,
round(avg(order_total),1) as average_revenue,
max(order_total) as Highest_value from blinkit_orders
group by payment_method
order by highest_value desc;

select delivery_status,
count(*) as total_orders,
round(sum(order_total),1) as total_revenue,
round(sum(order_total)/count(*),1) as revenue_per_order from blinkit_orders
group by delivery_status
order by revenue_per_order desc;

select payment_method,
count(*) as total_orders,
round(sum(order_total),1) as total_revenue,
round(avg(order_total),1) as average_revenue from blinkit_orders
group by payment_method
having sum(order_total) > 500000 and
avg(order_total) > (select avg(order_total) from blinkit_orders);