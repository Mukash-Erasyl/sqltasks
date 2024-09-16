## Задача 6

#6.1

DELIMITER //

CREATE PROCEDURE UpdateStudentGPA(
    IN studentId INT,
    IN new_gpa float
)
BEGIN
    UPDATE Student
    SET gpa = new_gpa
    WHERE ID = studentId;
END//

DELIMITER //

#6.2

CREATE VIEW StudentGraduationGPA
AS
SELECT name, graduation_date, gpa
FROM Student
WHERE graduation_date IS NOT NULL;

SELECT *
FROM StudentGraduationGPA;