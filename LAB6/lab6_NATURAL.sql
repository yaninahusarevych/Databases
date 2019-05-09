USE passport1;

SELECT * FROM stuff;
SELECT * FROM department_of_migration_service;

SELECT stuff.id, stuff.head_name, stuff.head_surname, stuff.head_patronymic, 
department_of_migration_service.town_or_village, department_of_migration_service.street 
FROM stuff, department_of_migration_service
WHERE stuff.department_id = department_of_migration_service.id;