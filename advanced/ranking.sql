SELECT 
  customer_id,
  amount,
  ROW_NUMBER() OVER (PARTITION BY customer_id ORDER BY amount DESC) AS rn
FROM orders;

SELECT 
  customer_id,
  amount,
  RANK() OVER (PARTITION BY customer_id ORDER BY amount DESC) AS rnk
FROM orders;

SELECT 
  customer_id,
  amount,
  DENSE_RANK() OVER (PARTITION BY customer_id ORDER BY amount DESC) AS drnk
FROM orders;

SELECT 
  customer_id,
  amount,
  LEAD(amount) OVER (PARTITION BY customer_id ORDER BY order_date) AS next_order
FROM orders;

SELECT 
  customer_id,
  amount,
  LAG(amount) OVER (PARTITION BY customer_id ORDER BY order_date) AS prev_order
FROM orders;