CREATE TABLE department (
                            id INT PRIMARY KEY AUTO_INCREMENT,
                            department_name VARCHAR(255) NOT NULL,
                            location VARCHAR(255) NOT NULL
);


CREATE TABLE employee (
                          id INT PRIMARY KEY AUTO_INCREMENT,
                          first_name VARCHAR(255) NOT NULL,
                          last_name VARCHAR(255) NOT NULL,
                          department_id INT NOT NULL REFERENCES department(id), -- Ссылается на id в department
                          salary NUMERIC NOT NULL,
                          emp_id VARCHAR(255) NOT NULL UNIQUE -- Уникальный идентификатор сотрудника
);

CREATE TABLE salary (
                        id INT PRIMARY KEY AUTO_INCREMENT,
                        employee_id INT NOT NULL REFERENCES employee(id), -- Ссылается на id в employee
                        salary NUMERIC NOT NULL
);



INSERT INTO department (department_name, location) VALUES
                                                       ('HR', 'New York'),
                                                       ('IT', 'San Francisco'),
                                                       ('Finance', 'New York'),
                                                       ('Marketing', 'San Francisco');

-- Вставка данных в таблицу employee
INSERT INTO employee (first_name, last_name, department_id, salary, emp_id) VALUES
                                                                                ('John', 'Doe', 1, 50000, 'E001'),
                                                                                ('Jane', 'Smith', 2, 60000, 'E002'),
                                                                                ('Bob', 'Johnson', 1, 55000, 'E003'),
                                                                                ('Alice', 'Williams', 3, 70000, 'E004'),
                                                                                ('Charlie', 'Brown', 2, 65000, 'E005'),
                                                                                ('David', 'Wilson', 4, 55000, 'E006'),
                                                                                ('Eva', 'Davis', 2, 65000, 'E007'); -- Уникальный emp_id для тестирования

-- Вставка данных в таблицу salary
INSERT INTO salary (employee_id, salary) VALUES
                                             (1, 50000),
                                             (2, 60000),
                                             (3, 55000),
                                             (4, 70000),
                                             (5, 65000),
                                             (6, 55000);