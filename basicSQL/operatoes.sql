select * from cartoon;

select * from cartoon where title = 'GTA V';

SELECT * from cartoon where age > 80;

SELECT * from cartoon where age <= 80;

SELECT * from cartoon where episodes <> 80;

-- SELECT * from cartoon where episodes != 80;

SELECT * from cartoon where name LIKE 'B%';

SELECT * from cartoon where name ILIKE 'b%';

SELECT * FROM cartoon where age > 80 and genre='game';

SELECT * FROM cartoon where country = 'India' OR country = 'Greece';

SELECT name, title FROM cartoon where NOT genre='cartoon' and title NOT IN('Master Raindrop','Jackie Chan Adventures','Vice City'); 

delete from cartoon where id BETWEEN 22 and 36;

update cartoon set genre='game' where id between 23 and 37;
