use mini_project;
-----         TYPE 1 : Basics     -------
-- Q1
select name, email from customers;

-- Q2
select * from products;

-- Q3

select distinct(category) from products;

-- Q4

select * from products where price > 1000;

-- Q5

select * from products where  price>2000 and price<5000; -- we can also use price BETWEEN 2000 AND 5000.

-- Q6

select * from customers where customer_id in (2,4,5,7,25);

-- Q7

select * from customers where substring(name,1,1) in ("a", "A");

-- Q8

select * from products where category = "Electronics" and price < 3000;

-- Q9

select name, price from products order by price desc;

-- Q10

select name, price from products order by price desc, name;


         -- --------- Level 1 basics completed ------------ --


