## Задача 12


#12.1

SELECT COUNT(*)
FROM employee;

#12.2
SELECT d.location, COUNT(e.id) AS employee_count
FROM department d
         JOIN employee e ON d.id = e.department_id
GROUP BY d.location
HAVING d.location = 'San Francisco';

#12.3

SELECT emp_id, COUNT(*)
FROM employee
GROUP BY emp_id
HAVING COUNT(*) > 1;


#12.4
SELECT emp_id, first_name, last_name, COUNT(*)
FROM employee
GROUP BY emp_id, first_name, last_name
HAVING COUNT(*) > 1;

#12.5

INSERT INTO employee (first_name, last_name, department_id, salary, emp_id)
VALUES ('John', 'Jones', 2, 25000, 'E04'),
       ('Erasyl', 'Sagintaev', 1, 150000, 'E05'),
       ('Conor', 'MCGregor', 3, 350000, 'E099');


INSERT INTO employee (first_name, last_name, department_id, salary, emp_id)
VALUES ('Stipe', 'Miochisch', 2, 27000, 'E11'),
       ('Greg', 'Stieve', 1, 170000, 'E12'),
       ('John', 'Jones', 2, 29000, 'E13');


INSERT INTO employee (first_name, last_name, department_id, salary, emp_id)
VALUES ('John', 'Jones', 2, 29000, 'E14'),
       ('Erasyl', 'Sagintaev', 1, 1990000, 'E15'),
       ('Arman', 'Tsarukyan', 3, 1980000, 'E16');


#Проверка на дубликаты

SELECT first_name, last_name, department_id, COUNT(*)
FROM employee
GROUP BY first_name, last_name, department_id
HAVING COUNT(*) > 1;

