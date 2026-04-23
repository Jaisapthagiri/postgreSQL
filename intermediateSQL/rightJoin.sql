-- Show all payments with order details

select p.order_id, o.product, o.amount, o.order_date
from orders o 
right join payments p 
on p.order_id = o.id;

-- Show all payments with customer names

SELECT p.id, c.name, p.payment_method, p.status
from customers c 
RIGHT JOIN orders o 
on o.customer_id = c.id 
RIGHT JOIN payments p 
on p.order_id = o.id;

-- Show all orders from payments side

SELECT o.product, o.amount, o.order_date
from orders o 
RIGHT JOIN payments p
on p.order_id = o.id;

-- Find payments without matching orders

SELECT p.id, p.order_id
from orders o
RIGHT JOIN payments p
ON p.order_id = o.id 
where o.id is null;

-- Find customers who made no payments (using RIGHT JOIN logic)

select c.name
from payments p
RIGHT JOIN orders o
on p.order_id = o.id
RIGHT JOIN customers c 
on c.id = o.customer_id
where p.id is null;

-- Count payments per order (include orders with 0)

select o.product, count(p.id) as nos
from payments p 
RIGHT JOIN orders o
on o.id = p.order_id
GROUP BY o.product
HAVING count(p.id) >= 1
ORDER BY o.product;
