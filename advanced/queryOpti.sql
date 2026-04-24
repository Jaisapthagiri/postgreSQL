create index ind_name on customers (name);

select * from customers where name = 'Arun';

-- bad join by using *

-- SELECT *
-- FROM customers c
-- JOIN orders o ON c.name = o.customer_name;

-- get only the required column

SELECT c.name, o.amount
FROM customers c
    JOIN orders o ON c.id = o.customer_id;

-- reducing sub queries

SELECT name
FROM customers
WHERE
    id IN (
        SELECT customer_id
        FROM orders
    );

-- use

SELECT DISTINCT
    c.name
FROM customers c
    JOIN orders o ON c.id = o.customer_id;

-- selective projection

select * from customers;

-- use
select name, email, city from customers;