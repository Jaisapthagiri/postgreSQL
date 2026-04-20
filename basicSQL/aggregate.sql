select * from cartoon;

-- aggregate

-- sum

select sum(cartoon_rating) from cartoon;

select sum(net_worth) from cartoon where title='Ben10';

select title, sum(cartoon_rating) from cartoon group by title;

-- count

SELECT title, count(title) from cartoon GROUP BY title;

select title, sum(cartoon_rating) as total_rating from cartoon GROUP BY title order by total_rating desc;

-- sum + count

SELECT title, 
       COUNT(cartoon_rating) AS rating, 
       SUM(cartoon_rating) AS total_rating
FROM cartoon
GROUP BY title
ORDER BY total_rating DESC;

-- avg

SELECT title, round(AVG(cartoon_rating),2) AS avg_rating
FROM cartoon
GROUP BY title;

-- min

SELECT title, MIN(cartoon_rating) AS min_rating
FROM cartoon
GROUP BY title;

SELECT title, Max(cartoon_rating) AS min_rating
FROM cartoon
GROUP BY title;
