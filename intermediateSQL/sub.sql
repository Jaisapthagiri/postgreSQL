-- scalar

select name from users where age = (select max(age) from users );

-- column

select name from customers where id in (select customer_id from orders);

-- row 

select * from users where (age, email) = (select age, email from users where id=1);

-- table
select * from ( select id, name from customers ) as temp;


