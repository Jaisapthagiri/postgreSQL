-- create View

CREATE VIEW customer_orders AS
SELECT c.id, c.name, c.city, o.product, o.amount
FROM customers c
    JOIN orders o ON c.id = o.customer_id;

select * from customer_orders;

CREATE VIEW customer_total_spending AS
SELECT c.name, SUM(o.amount) AS total_spent
FROM customers c
    JOIN orders o ON c.id = o.customer_id
GROUP BY
    c.name;

SELECT * from customer_total_spending;

CREATE VIEW full_order_details AS
SELECT c.name, o.product, o.amount, p.payment_method, p.status
FROM
    customers c
    JOIN orders o ON c.id = o.customer_id
    JOIN payments p ON o.id = p.order_id;

SELECT * from full_order_details;

-- modify view

CREATE OR REPLACE VIEW full_order_details AS
SELECT c.name, o.product, o.amount, p.payment_method, p.status, c.city
FROM
    customers c
    JOIN orders o ON c.id = o.customer_id
    JOIN payments p ON o.id = p.order_id;

SELECT * from full_order_details;

-- drop view

DROP VIEW full_order_details;