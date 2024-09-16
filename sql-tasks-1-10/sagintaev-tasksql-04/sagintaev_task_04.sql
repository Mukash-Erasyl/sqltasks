##Задача 4

#4.1

SELECT *
FROM Student
WHERE name LIKE 'R%'
  AND LENGTH(name) = 9;

SELECT *
FROM Student
WHERE LOWER(name) LIKE 'r%'
  AND LENGTH(name) = 9;

#4.2

SELECT *
FROM Student
WHERE name REGEXP '^R';

SELECT *
FROM Student
WHERE name REGEXP '^[R]';

SELECT c.id, c.name, c.textbook, c.credits, c.is_active
FROM Course c
         JOIN Department d ON c.department_id = d.id
WHERE d.name = 'Computer Science'
  AND c.name LIKE '%to%';


#4.3

SELECT *
FROM Student
WHERE LOCATE('R', name) = 1;

SELECT *
FROM Department
WHERE LOCATE('a', name) = 0
  AND LOCATE('e', name) = 0
  AND LOCATE('i', name) = 0
  AND LOCATE('o', name) = 0
  AND LOCATE('u', name) = 0
  AND LOCATE('y', name) = 0
  AND LOCATE('A', name) = 0
  AND LOCATE('E', name) = 0
  AND LOCATE('I', name) = 0
  AND LOCATE('O', name) = 0
  AND LOCATE('U', name) = 0
  AND LOCATE('Y', name) = 0