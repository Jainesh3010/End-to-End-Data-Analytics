use testdb;

select * from ZeptoData;

select Product_Name,Category,sum(Profit)
from ZeptoData
group by Product_Name,Category;

select Product_Name,Category,sum(Profit)
from ZeptoData
group by Product_Name,Category
order by sum(profit) desc
limit 5;

select Category,sum(Profit)
from ZeptoData
group by Category
order by sum(profit) desc;


select city,sum(Profit)
from ZeptoData
group by city
order by sum(profit) desc;


select city,category,sum(Profit)
from ZeptoData
group by city,category
order by sum(profit) desc;

select Product_Name,category,City,Influencer_Active
from ZeptoData;

select Category,sum(Profit) as profit
from ZeptoData
group by Category
having profit>150000;

select Category,avg(Profit) as avg_profit
from ZeptoData
group by Category;

select Product_Name,Category,avg(Profit) as avg_profit
from ZeptoData
group by Product_Name,Category;

select City,COUNT(Product_Name)
from ZeptoData
group by City;

select Product_Name,
case when Profit > 5000 then "High Profit"
else "Low Profit"
end as Profit_Status
from ZeptoData;

select month(Date) AS month,SUM(Total_Revenue) AS revenue
from ZeptoData
group by month(Date)
order by month;

select month(Date) AS month,SUM(Profit) AS profit
from ZeptoData
group by month(Date)
order by month;

select month(Date) AS month,SUM(Total_discount) AS Discount
from ZeptoData
group by month(Date)
order by month;

select month(Date) AS month,SUM(Cost) AS Cost
from ZeptoData
group by month(Date)
order by month;

select month(Date) AS month,SUM(Gross_Revenue) AS Gross_revenue
from ZeptoData
group by month(Date)
order by month;

select month(Date) as month,Product_Name,sum(Gross_Revenue) as Gross_revenue
from ZeptoData
group by month(Date),Product_Name
order by month;

select sum(Profit) from ZeptoData;
select sum(Cost) from ZeptoData;
select sum(Total_Revenue) from ZeptoData;
select sum(Total_discount) from ZeptoData;
select sum(Gross_Revenue) from ZeptoData;