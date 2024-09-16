## Задача 20

#Задача 20.1
SELECT id ,name,gpa,
       CASE
           WHEN gpa >= 4.0 THEN 'SUPER'
           WHEN gpa >= 3.5 THEN 'EXCELLENT'
           WHEN gpa >= 3.0 THEN 'GOOD'
           WHEN gpa >= 2.5 THEN 'AVERAGE'
           WHEN gpa >= 2.0 THEN 'BELOW AVERAGE'
           ELSE 'FAIL'
           END as grade_text_desc
FROM Student;

#Задача 20.2

SELECT
    id,
    name,
    gpa,
    CHOOSE(
            CASE
                WHEN gpa >= 4.0 THEN 5
                WHEN gpa >= 3.5 THEN 4
                WHEN gpa >= 3.0 THEN 3
                WHEN gpa >= 2.5 THEN 2
                WHEN gpa >= 2.0 THEN 1
                ELSE 0
                END,
            'BELOW AVERAGE',
            'AVERAGE',
            'Good',
            'EXCELLENT',
            'SUPER'
    ) AS grade_description
FROM Student;


#20.3

SELECT id , name , gpa ,
       ELT(
               CASE
                   WHEN gpa >= 4.0 THEN 5
                   WHEN gpa >= 3.5 THEN 4
                   WHEN gpa >= 3.0 THEN 3
                   WHEN gpa >= 2.5 THEN 2
                   WHEN gpa >= 2.0 THEN 1
                   ELSE 0
                   END,
               'BELOW AVERAGE',
               'AVERAGE',
               'Good',
               'EXCELLENT',
               'SUPER'
       )
FROM Student;


#20.4

SELECT
    id,
    name,
    gpa,
    IF(gpa >= 4.0, 'SUPER',
       IF(gpa >= 3.5,'EXCELLENT',
          IF(gpa >= 3.0,'Good',
             IF(gpa >= 2.5,'AVERAGE',
                IF(gpa >= 2.0,'BELOW AVERAGE','FAIL bro')))))
FROM Student;