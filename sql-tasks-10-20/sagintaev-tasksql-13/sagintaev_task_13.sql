## Задача 13

SELECT e.first_name , d.department_name ,s.salary
FROM employee as e
         INNER JOIN department as d ON e.department_id = d.id
         INNER JOIN salary as s ON e.id = s.employee_id;