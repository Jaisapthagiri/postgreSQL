-- inner

SELECT s.name, d.name
FROM departments d
    INNER JOIN students s ON d.name = s.department
order by s.id;

SELECT s.name, d.name
FROM departments d
    INNER JOIN students s ON d.name = s.department
WHERE
    d.name = 'IT'
order by s.id;

SELECT s.name, s.cgpa, s.department
FROM students s
    INNER JOIN departments d ON s.department = d.name
ORDER BY s.id;

SELECT d.name, count(s.id) as total_Students
FROM departments d
    INNER JOIN students s ON d.name = s.department
GROUP BY
    d.name,
    d.id
ORDER BY d.id;

-- left join

SELECT d.name, s.name AS student
FROM departments d
    LEFT JOIN students s ON d.name = s.department
WHERE
    s.id IS NOT NULL
ORDER BY s.id;

SELECT d.name, s.name, s.cgpa as mark
FROM departments d
    LEFT JOIN students s ON d.name = s.department
    and s.cgpa >= 8
    where s.name is not NULL and s.cgpa is not NULL
ORDER BY s.cgpa ASC;

-- right join

SELECT d.name, s.name AS student
FROM students s
    RIGHT JOIN departments d ON d.name = s.department;

-- Full Join

SELECT d.name AS department, s.name AS student
FROM departments d
    FULL JOIN students s ON d.name = s.department;

SELECT s1.name AS student1, s2.name AS student2, s1.department
FROM students s1
    JOIN students s2 ON s1.department = s2.department
    AND s1.id != s2.id;

-- self join

SELECT s1.name, s2.name, s1.department
FROM students s1
    JOIN students s2 ON s1.department = s2.department
    AND s1.id < s2.id;

SELECT s.name AS student, d.name AS department
FROM students s
    CROSS JOIN departments d;

drop table departments;

alter table staff drop constraint staff_department_id_fkey;