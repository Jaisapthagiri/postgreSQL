-- inner join

-- all orders with customer names

select o.product, c.name, o.amount
from customers c
inner join orders o 
on o.customer_id = c.id
ORDER BY c.id;


-- all payment with product name

select o.product, p.payment_method as payment_type, p.status
from payments p
inner join orders o
on p.order_id = o.id;


-- customer name + product + payment status

select c.name, o.product, p.status
from customers c
inner join orders o on c.id = o.customer_id
inner JOIN payments p on o.id = p.order_id;

-- successful payments - completed, customer_name, product, amount

select c.name, o.product, o.amount
from customers c
inner join orders o on c.id = o.customer_id
inner join payments p on o.id = p.order_id
where p.status = 'Completed';

-- order_id, product, payment status

select o.id, o.product, p.status
from orders o
inner join payments p
on o.id = p.order_id
where p.status = 'Failed';

-- customer_name, total_orders

select c.name as name, count(o.customer_id) as total_orders
from customers c
inner join orders o 
on c.id = o.customer_id
GROUP BY c.id;



