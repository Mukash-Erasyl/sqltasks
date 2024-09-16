## Задача 16

#Задача 16.1

SELECT textbook, name from Course WHERE name IN('Introduction to Operating Systems' , 'Computer Architecture: Intermediate');

#Задача 16.2

SELECT * FROM Course WHERE name LIKE('Introduction to%');

#16.3

SELECT * FROM Course WHERE name LIKE 'Introduction to%' OR name LIKE 'Advanced%';

#16.4

CREATE TABLE Patterns(
                         id INT PRIMARY KEY AUTO_INCREMENT,
                         pattern VARCHAR(255)
);

INSERT INTO Patterns(pattern)
VALUES('%Introduction to%'),
      ('%Advanced%'),
      ('%Mechanics'),
      ('%Database%');


SELECT c.textbook , c.name FROM Course AS c
                                    INNER JOIN Patterns AS p WHERE c.name LIKE p.pattern;