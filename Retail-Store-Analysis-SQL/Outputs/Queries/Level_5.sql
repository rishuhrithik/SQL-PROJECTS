-- --------------- LEVEL : 5 Subqueries(Inner Queries) ---------------- --

-- Q1

select * from products 
where price > (select avg(price) from products);

-- Q2

select * from customers where customer_id 
in (select customer_id  from  orders 
group by customer_id having count(order_id) >=1);

-- Q3

with t as
(select customer_id  , avg(total_amount) as avg_amount_ from  orders group by customer_id)
select o.customer_id, o.order_id , o.total_amount from orders as o inner join t 
on o.customer_id = t.customer_id where  o.total_amount > t.avg_amount_;

-- -------- ANOTHER WAY --------- --

SELECT *
FROM orders o1
WHERE total_amount > (
    SELECT AVG(total_amount)
    FROM orders o2
    WHERE o2.customer_id = o1.customer_id
) order by customer_id;

-- Q4

SELECT * FROM CUSTOMERS WHERE CUSTOMER_ID  
NOT IN (SELECT CUSTOMER_ID FROM ORDERS );

-- Q5

select * from products where product_id 
not in (select product_id from order_items);

-- Q6 

select customer_id ,order_id, total_amount 
from orders as o1 where total_amount = 
(select max(total_amount) from orders as o2 
where o1.customer_id = o2.customer_id) order by customer_id;

-- Q7

with t as 
( select customer_id,  max(total_amount) 
as Highest_Order from orders as o2 group by customer_id )
select c.customer_id, c.name, t.Highest_Order 
from customers as c join t on t.customer_id = c.customer_id;

-- --------------- LEVEL:5 COMPLETED ----------- --
