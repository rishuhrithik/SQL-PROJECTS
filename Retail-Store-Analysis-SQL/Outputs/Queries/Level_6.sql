-- ----------- LEVEL:6 SET OPERATIONS ------------ --

-- Q1

select customer_id, name from customers 
where customer_id in (
select customer_id from customers
union
select customer_id from product_reviews);

-- Q2

select customer_id, name from customers 
where customer_id in (
select customer_id from orders)
and customer_id in
(select customer_id from product_reviews);

-- -------------------- LEVEL:6 COMPLETED ------------------ --