## Задача 19

CREATE TABLE GradeMapping
(
    grade VARCHAR(2) PRIMARY KEY,
    numeric_value FLOAT
);

INSERT INTO GradeMapping (grade, numeric_value)
VALUES ('A+', 4.0),
       ('A', 4.0),
       ('A-', 3.7),
       ('B+', 3.3),
       ('B', 3.0),
       ('B-', 2.7),
       ('C+', 2.3),
       ('C', 2.0),
       ('C-', 1.7),
       ('D+', 1.3),
       ('D', 1.0),
       ('D-', 0.7),
       ('F', 0.0);

#19.1

SELECT c.id,
       c.name,
       COALESCE(
               AVG(NULLIF(g.numeric_value, 0)), 0
       )
FROM Course as c
         JOIN Exam e on c.id = e.course_id
         JOIN GradeMapping as g ON g.grade = e.grade
GROUP BY c.id, c.name;


#19.2
SELECT c.id,
       c.name,
       CASE
           WHEN COUNT(e.id) = 0 THEN NULL
           ELSE AVG(g.numeric_value)
           END
FROM Course as c
         JOIN Exam e on c.id = e.course_id
         JOIN GradeMapping as g ON g.grade = e.grade
GROUP BY c.id, c.name;


#19.3
SELECT c.id,
       c.name,
       COALESCE(
               CASE
                   WHEN COUNT(e.id) = 0 THEN NULL
                   ELSE AVG(g.numeric_value)
                   END, 0
       )
FROM Course as c
         JOIN Exam e on c.id = e.course_id
         JOIN GradeMapping as g ON g.grade = e.grade
GROUP BY c.id, c.name;


