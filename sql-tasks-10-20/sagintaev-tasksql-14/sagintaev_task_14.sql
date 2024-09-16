## Задача 14

SELECT first_name, department_name, salary
FROM (SELECT e.id, e.first_name, d.department_name
      FROM employee as e
               INNER JOIN department as d ON e.department_id = d.id) AS e_d
         INNER JOIN salary as s ON e_d.id = s.employee_id;