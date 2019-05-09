USE passport1;

INSERT INTO department_of_migration_service VALUES(NULL, 'Lviv', 'Lviv', 'Slovatskoho', '10');
SELECT * FROM department_of_migration_service;
CREATE VIEW department AS SELECT DISTINCT town_or_village, street FROM department_of_migration_service;
SELECT *FROM department; 