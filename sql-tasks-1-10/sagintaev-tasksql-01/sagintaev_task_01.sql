SHOW TABLE STATUS LIKE 'Student';
SHOW CREATE TABLE `Exam`;
SHOW CREATE TABLE `Registration`;

ALTER TABLE `Registration`
    DROP FOREIGN KEY `registration_student_id_fkey`;
ALTER TABLE `Exam`
    DROP FOREIGN KEY `exam_student_id_fkey`;

ALTER TABLE `Student`
    ENGINE = MyISAM;
SHOW TABLE STATUS LIKE 'Student';

ALTER TABLE `Student`
    ENGINE = InnoDB;
SHOW TABLE STATUS LIKE 'Student';

SHOW ENGINES;



