## Задача 8

SELECT TABLE_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE COLUMN_NAME = 'department_id'
  AND TABLE_SCHEMA = DATABASE();