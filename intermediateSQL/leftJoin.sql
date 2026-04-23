-- Show all customers with their orders

select c.name, o.product
from customers c
left join orders o
on c.id = o.customer_id;

-- Show all orders with payments

select o.id, p.payment_method, p.status
from orders o
left join payments p
on o.id = p.order_id;

-- Show all customers with order count (include customers with 0 orders)

select c.name, count(o.product) as count
from customers c
left join orders o
on c.id = o.customer_id
GROUP BY c.name
ORDER BY c.name ASC;

-- Find customers who have no orders

SELECT c.name , count(o.product) as count from customers c
LEFT JOIN orders o
on c.id = o.customer_id
GROUP BY c.name
having count(o.product) =0;

-- Find orders that have no payments
SELECT o.id, o.product
FROM orders o
LEFT JOIN payments p
ON o.id = p.order_id
WHERE p.order_id IS NULL;

-- Show customers with total amount spent (include customers with 0)

select c.name as name, sum(o.amount)
from customers c
left join orders o
on c.id = o.customer_id
GROUP BY c.name;
