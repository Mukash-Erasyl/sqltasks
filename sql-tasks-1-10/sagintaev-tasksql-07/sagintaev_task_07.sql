## Задача 7

#7.1

DELIMITER //

CREATE PROCEDURE CalculateAvgGPA(
    IN departament_id INT,
    OUT average_gpa FLOAT
)
BEGIN
    SELECT AVG(s.gpa)
    INTO average_gpa
    FROM Student s
             JOIN Registration r ON s.id = r.student_id
             JOIN Course c ON r.course_id = c.id
    WHERE c.department_id = departament_id;
END //

DELIMITER ;

SET @average_gpa = 0;

CALL CalculateAvgGPA(1, @average_gpa);

SELECT @average_gpa AS average_gpa;


#7.2
DELIMITER //

CREATE PROCEDURE AssignLetterGrade(
    IN numeric_grade INT,
    OUT letter_grade CHAR(1)
)
BEGIN
    IF numeric_grade > 90 THEN
        SET letter_grade = 'A';
    ELSEIF numeric_grade > 80 THEN
        SET letter_grade = 'B';
    ELSEIF numeric_grade > 65 THEN
        SET letter_grade = 'B';
    ELSEIF numeric_grade > 45 THEN
        SET letter_grade = 'В';
    ELSE
        SET letter_grade = 'F';
    END IF;

END //

DELIMITER //

SET @letterGrade = '';

CALL AssignLetterGrade(85, @letterGrade);

SELECT @letterGrade;


#7.2
DELIMITER //

CREATE PROCEDURE IncrementAndReturn(
    INOUT value INT
)
BEGIN
    SET value = value + 1;

END //

DELIMITER //

SET @value = 1;

CALL IncrementAndReturn(@value);

SELECT @value;

CALL IncrementAndReturn(@value);

SELECT @value;