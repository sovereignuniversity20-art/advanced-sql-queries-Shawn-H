select * from customers;
select * from orders;
SELECT customer_id, AVG(total_amount) AS
average_spent
FROM orders
GROUP BY customer_id;
SELECT order_date, SUM(total_amount) AS
daily_total
FROM orders
GROUP BY order_date;
SELECT order_date, SUM(total_amount) AS
daily_total
FROM orders
WHERE total_amount > 150
GROUP BY order_date;
SELECT id, first_name, last_name 
FROM customers
WHERE last_name = "Smith"
GROUP BY id;
SELECT orders.id, customers.first_name, 
customers.last_name, orders.order_date,
orders.total_amount
FROM orders
INNER JOIN customers ON orders.customer_id
= customers.id;
SELECT orders.id, customers.first_name, 
customers.last_name, orders.order_date,
orders.total_amount
FROM orders
RIGHT JOIN customers ON orders.customer_id
= customers.id;
SELECT id, order_date, total_amount
FROM orders
WHERE total_amount <= (SELECT
AVG(total_amount)FROM orders);

