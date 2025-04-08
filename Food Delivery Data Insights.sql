use SQL_Project_2

-- View of the Entire Data
select * from orders;

 -- Q.1 Find top 3 outlets by cuisine type without using limit and top function.

with A as( 
	select Cuisine, Restaurant_id, count(1) as Total_orders 
	from orders group by Cuisine, Restaurant_id 
) 
select Cuisine, Restaurant_id 
from (select Cuisine, Restaurant_id, ROW_NUMBER() over (partition by Cuisine order by Total_orders desc) as Outlet_Rank from A) B 
where Outlet_Rank <= 3;

-- Q2. Find the daily new customer count from the launch date.

select Date, count(1) as New_customers from
(select 
Customer_code as New_Customers, 
cast(Placed_at as date) as 'Date',
ROW_NUMBER() over (partition by Customer_code order by Placed_at) as occurrence
from orders) A
where occurrence = 1
group by Date;

-- Q3 Count of all the users who were acquired in Jan 2025 and only placed one order in Jan and did not place any other order.

select Customer_code, count(1) as Total_Orders
from orders
group by Customer_code
having MONTH(MAX(Placed_at)) = 1 and count(1) = 1

-- Q4 List all the customers with no order in the last 7 days but were acquired one month ago with their first order on promo.

select Customer_code, First_Order_Date from
(select Customer_code, CAST(MIN(Placed_at) as date) as First_Order_Date
from orders
where Promo_code_Name is not null
group by Customer_code
having DATEDIFF(MONTH, CAST(MIN(Placed_at) as date), (select MAX(Placed_at) from orders)) >= 1) A
where Customer_code not in (select Customer_code from orders where DATEDIFF(DAY, Placed_at, (select max(Placed_at) from orders)) <= 7);

-- Q5. Growth team is planning to create a trigger that will target customers after their every 3rd order with personalized communication
-- and they have asked you to create a query for this.

select *
from
(select *, ROW_NUMBER() over (partition by Customer_code order by Placed_at) as Order_number 
from orders) A
where Order_number % 3 = 0 and CAST(Placed_at as date) = (select CAST(max(Placed_at) as date) from orders);

-- Q6. List customers who placed more than one order and all their orders on a promo only.

select Customer_code, COUNT(1) as Total_orders, COUNT(Promo_code_Name) as Promo_Orders
from orders
group by Customer_code
having COUNT(1) = COUNT(Promo_code_Name) and COUNT(1) > 1

-- Q7. What percent of customers were originally acquired in jan 2025 compared to all customers acquired in that month. 
-- Originally acquired means Placed their first order without promo code.

select count(1)*100.0/(select count(distinct Customer_code) from orders where MONTH(Placed_at) = 1) as Customer_percent
from
(select Customer_code, Promo_code_Name, Placed_at, ROW_NUMBER() over (partition by Customer_code order by Placed_at) as Order_Number
from orders
where MONTH(Placed_at) = 1) A
where Order_Number = 1 and Promo_code_Name is null