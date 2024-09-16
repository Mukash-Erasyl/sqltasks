## Задача 5

# 5.1
CREATE TABLE Departments
(
    id INT PRIMARY KEY NOT NULL,
    addiyionalInfo JSON
);

INSERT INTO Departments (id, addiyionalInfo)
VALUES (1, '{
  "head": "Erasyl Sagintaev",
  "location": "Kaznu Korpus A",
  "courses": [
    "Algorithms",
    "Data Structures",
    "Operating Systems"
  ]
}'),
       (2, '{
         "head": "Mukash Johnson",
         "location": "Kaznu Korpus B",
         "courses": [
           "Calculus",
           "Linear Algebra",
           "Statistics"
         ]
       }'),
       (3, '{
         "head": "Dr. Livsi",
         "location": "Kaznu Korpus C",
         "courses": [
           "Quantum Mechanics",
           "Thermodynamics",
           "Electrodynamics"
         ]
       }');

SELECT *
FROM Departments;

SELECT JSON_EXTRACT(addiyionalInfo, '$.head')
FROM Departments;

#5.2
UPDATE Departments
SET addiyionalInfo = JSON_SET(addiyionalInfo, '$.head', 'El Primo')
WHERE id = 1;

SELECT JSON_EXTRACT(addiyionalInfo, '$.head')
FROM Departments;


#5.3
UPDATE Departments
SET addiyionalInfo = JSON_SET(addiyionalInfo, '$.dean', 'Mr. Decan')
WHERE id = 1;

SELECT JSON_EXTRACT(addiyionalInfo, '$.dean')
FROM Departments;


#5.4
UPDATE Departments
SET addiyionalInfo = JSON_REMOVE(addiyionalInfo, '$.courses')
WHERE id = 1;

SELECT JSON_EXTRACT(addiyionalInfo, '$.courses')
FROM Departments;


##5.5
UPDATE Departments
SET addiyionalInfo = JSON_ARRAY_APPEND(addiyionalInfo, '$.courses', 'Dark power defence')
WHERE id = 2;

UPDATE Departments
SET addiyionalInfo = JSON_ARRAY_APPEND(addiyionalInfo, '$.courses', 'Hello kitty')
WHERE id = 2;

SELECT JSON_EXTRACT(addiyionalInfo, '$.courses')
FROM Departments;
