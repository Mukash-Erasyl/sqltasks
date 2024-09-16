## Задача 18

#18.1
SELECT c.id, c.name ,c.credits, c.is_active,d.name,d.code
FROM Course as c  INNER JOIN Department as d ON c.department_id = d.id
WHERE d.name='Computer Science';

#18.2
SELECT c.id, c.name ,c.credits, c.is_active,d.name,d.code
FROM Course as c  INNER JOIN Department as d ON c.department_id = d.id;

SELECT c.id, c.name ,c.credits, c.is_active,d.name,d.code
FROM Course as c  INNER JOIN Department as d WHERE c.department_id = d.id;

#18.3
SELECT c.name, d.name FROM Course as c LEFT JOIN Department as d ON c.department_id = d.id;