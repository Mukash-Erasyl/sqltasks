## Задача 15
#Возвращает все схемы
SELECT schema_name
FROM information_schema.schemata;

#Возвращает таблицы бд к которому подключен в схеме it_company_db
SELECT table_name
FROM information_schema.tables
WHERE table_schema = 'it_company_db';


#Возвращает все данные таблицы всех бд
SELECT table_name
FROM information_schema.tables
ORDER BY table_name;
