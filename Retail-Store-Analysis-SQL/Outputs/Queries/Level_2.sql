-- ---------LEVEL 2 : Filtering and Formating-------- --
-- Q1

select * from orders where customer_id is not null; -- all orders customers detail is linked

-- Q2

SELECT NAME AS CUST_NAME, EMAIL AS CUST_EMAIL FROM CUSTOMERS;

-- Q3

SELECT * , QUANTITY*ITEM_PRICE AS TOTAL_ITEM_AMOUNT FROM order_items;

-- Q4

SELECT concat(NAME,' ',':',PHONE) AS 'NAME+PHONE' FROM CUSTOMERS;

-- Q5

SELECT ORDER_ID, CUSTOMER_ID,  DATE(ORDER_DATE) AS OrderDate, TIME(ORDER_DATE) AS OrderTime, STATUS, TOTAL_AMOUNT FROM ORDERS;

-- Q6

SELECT * FROM PRODUCTS WHERE STOCK_QUANTITY = 0 OR STOCK_QUANTITY IS NULL;

-- ----------LEVEL 2 : Filtering and Formating (COMPLETED)-------- --