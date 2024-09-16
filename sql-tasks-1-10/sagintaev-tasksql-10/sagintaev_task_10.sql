## Задача 10

#10.1

SELECT name, graduation_date, AVG(gpa)
FROM Student
GROUP BY name, graduation_date
HAVING AVG(gpa) > 4.0
ORDER BY name, graduation_date;

#10.2

SELECT id, name, gpa
FROM Student
WHERE gpa > 3.5
