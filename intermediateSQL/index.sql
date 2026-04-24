CREATE INDEX idx_customer_city
ON customers(city);

select * from customers where city='Chennai';

drop index idx_customer_city;