-- Find customers from same city

select a.name 
from customers a
join customers b
on a.city = b.city
where a.id < b.id;

-- Show pairs of customers in same city
-- Find customers with same first letter in name
-- Find customers in same city without duplicate pairs
-- Find customers in same city but different names
-- Count how many customers share same city