-- ----------- ----- LEVEL 4 : MULTI-TABLE QUERIES ----- ---------- --

-- Q1 

select customers.name , orders.* 
from customers inner join orders 
on customers.customer_id = orders.customer_id 
order by order_id;

-- Q2

select distinct products.product_id,products.name, products.category
from products inner join order_items on products.product_id = order_items.product_id;

-- ------------- ANOTHER WAY --------------- --

select product_id, name from products where product_id in (select distinct(product_id) from order_items);


-- Q3 

select orders.* , payments.method from orders inner join payments on orders.order_id = payments.order_id;

-- Q4

select customers.customer_id, customers.name, group_concat(orders.order_id 
order by orders.order_id asc separator ',') as Order_Id_List
from customers left join orders on customers.customer_id = orders.customer_id 
group by customers.customer_id, customers.name;

-- Q5

select p.product_id, p.name, sum(o.quantity) as Quantity_Sold 
from order_items as o left join products as p on o.product_id = p.product_id 
group by p.product_id, p.name order by Quantity_Sold desc;

-- Q6

select payments.* from orders right join payments 
on orders.order_id = payments.order_id;

-- Q7

select c.customer_id, c.name, o.order_id, o.order_date, o.total_amount, 
p.payment_id, p.payment_date, p.amount_paid, p.method
from customers as c inner join orders as o on c.customer_id = o.customer_id 
inner join payments as p on o.order_id = p.order_id order by o.order_id asc;

-- --------------- LEVEL : 4 COMPLETED --------------- --