SELECT ROUND(123.456, 2);

SELECT FLOOR(123.9);

SELECT CEILING(123.1);

SELECT ABS(-50);

SELECT MOD(10, 3);

-- date

SELECT CURRENT_DATE;

SELECT CURRENT_TIMESTAMP;

SELECT CURRENT_DATE + INTERVAL '3 months ' + INTERVAL '5 days';

SELECT EXTRACT( YEAR FROM CURRENT_DATE );

SELECT EXTRACT( MONTH FROM CURRENT_DATE );

SELECT EXTRACT( HOUR FROM CURRENT_TIMESTAMP );

SELECT NOW();

-- conditional functions

SELECT
    id,
    product,
    amount,
    CASE
        WHEN amount > 30000 THEN 'High'
        WHEN amount BETWEEN 10000 AND 30000  THEN 'Medium'
        ELSE 'Low'
    END AS price_category
FROM orders;

SELECT
    id,
    payment_method,
    status,
    CASE
        WHEN status = 'Completed' THEN 'Success'
        WHEN status = 'Pending' THEN 'Waiting'
        ELSE 'Failed'
    END AS final_status
FROM payments;

SELECT name, COALESCE(email, 'No Email') FROM customers;

SELECT name, NULLIF(city, 'Chennai') AS city FROM customers;