-- cte

WITH
    total_spent AS (
        SELECT customer_id, SUM(amount) AS total
        FROM orders
        GROUP BY
            customer_id
    )
SELECT *
FROM total_spent
WHERE
    total > 5000;

WITH
    order_count AS (
        SELECT customer_id, COUNT(*) AS total_orders
        FROM orders
        GROUP BY
            customer_id
    )
SELECT c.name, oc.total_orders
FROM order_count oc
    JOIN customers c ON c.id = oc.customer_id
WHERE
    oc.total_orders > 2;

-- window func

SELECT customer_id, SUM(amount)
FROM orders
GROUP BY customer_id;

SELECT 
  customer_id,
  amount,
  SUM(amount) OVER (PARTITION BY customer_id) AS total_spent
FROM orders WHERE customer_id=1;


-- dynamic

DO $$
DECLARE
  cid INT := 1;
BEGIN
  EXECUTE 'SELECT * FROM orders WHERE customer_id = $1'
  USING cid;
END $$;

