# Вопросы

## Какие таблицы содержатся в вашей базе данных?

-**В схеме it_company_db содержатся**:`employee`, `salary` и `department`

В общей же схеме есть огромное количество таблиц системы бд.

К примеру: `ADMINISTRABLE_ROLE_AUTHORIZATIONS`, `INNODB_CMP_PER_INDEX_RESET`, `PARTITIONS`, `Program`, итд

## Почему важно понимать структуру базы данных перед выполнением операций?

Понимание структуры БД позволяет нам написать стойкую, отзывчивую, масштабируемую и отказоустойчивую 
архитектуру. В целом с помощью понимания структуры БД, мы можем обеспечить целостность данных,
оптимизировать запросы, избегать ошибки, и в целом правильно обрабатывать данные.



## Как вы можете использовать команды для получения дополнительной информации о каждой таблице, такой как количество столбцов или типы данных?
Есть так же дополнительные команды для получения дополнительной информации о каждой 
таблице с использованием команды основанные на INFORMATION_SCHEMA. 

-**Данные столбцов**:`information_schema.columns`
-**Данные таблиц**:`information_schema.Tables`
-**Данные представлений**:`information_schema.VIEWS`
-**Данные схем**:`information_schema.SCHEMATA`