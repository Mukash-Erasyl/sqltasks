## Задача 3

#3.1

SHOW VARIABLES LIKE 'max_allowed_packet';

#3.2

SHOW VARIABLES LIKE 'secure_file_priv';

CREATE TABLE StudentComplete
(
    id              INT PRIMARY KEY NOT NULL,
    name            VARCHAR(60),
    national_id     BIGINT          NOT NULL,
    birth_date      DATE,
    enrollment_date DATE,
    graduation_date DATE,
    gpa             FLOAT,
    photo           LONGBLOB        NOT NULL,
    UNIQUE (id)
);

CREATE TABLE DepartmentComplete
(
    id   INT PRIMARY KEY NOT NULL,
    name VARCHAR(50),
    code VARCHAR(4),
    logo LONGBLOB        NOT NULL,
    UNIQUE (id)
);


#3.3

INSERT INTO StudentComplete (id, name, national_id, birth_date, graduation_date, photo, enrollment_date, gpa)
VALUES (1001, 'Erasyl Sagintaev', 123345566, '2001-04-05', '2024-06-15', LOAD_FILE('/var/lib/mysql-files/image1.png'),
        '2024-09-12', 4);

INSERT INTO DepartmentComplete (id, name, code, logo)
VALUES (1, 'IT', 'CS', LOAD_FILE('/var/lib/mysql-files/image2.png'));

#3.4

ALTER TABLE StudentComplete
    ADD path VARCHAR(100) NOT NULL DEFAULT '';

ALTER TABLE StudentComplete
    DROP COLUMN photo;

ALTER TABLE DepartmentComplete
    ADD path VARCHAR(100) NOT NULL DEFAULT '';

ALTER TABLE DepartmentComplete
    DROP COLUMN logo;

UPDATE StudentComplete
SET path = '/path/to/span2.png'
WHERE id = 1001;

UPDATE DepartmentComplete
SET path = '/path/to/span2.png'
WHERE id = 1;


