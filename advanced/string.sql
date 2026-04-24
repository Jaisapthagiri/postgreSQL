SELECT CONCAT(name, ' - ', city) AS full_info
FROM customers;

SELECT SUBSTRING(name FROM 1 FOR 3) AS short_name
FROM customers;

SELECT REPLACE(email, 'gmail.com', 'company.com')
FROM customers;

SELECT UPPER(name), LOWER(city)
FROM customers;

SELECT name, LENGTH(name) AS len
FROM customers;

-- update customers set email = name||id || '@gmail.com'