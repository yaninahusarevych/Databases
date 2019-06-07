USE passport1;
set autocommit=0;
START TRANSACTION;
CREATE VIEW department AS SELECT DISTINCT town_or_village, street FROM department_of_migration_service;
SELECT * FROM department; 
INSERT INTO stuff
VALUES (NULL, 'Nadiia', 'Chorna', 'Andriivna', 'FormerName5', 'FormerSurname5', 'FormerPatronymic5', 'FormerPosition5', 10),
(NULL, 'HeadName6', 'HeadSurname6', 'HeadPatronymic6', 'FormerName6', 'FormerSurname6', 'FormerPatronymic6', 'FormerPosition6', 5),
(NULL, 'HeadName7', 'HeadSurname7', 'HeadPatronymic7', 'FormerName7', 'FormerSurname7', 'FormerPatronymic7', 'FormerPosition7', 8),
(NULL, 'HeadName8', 'HeadSurname8', 'HeadPatronymic8', 'FormerName8', 'FormerSurname8', 'FormerPatronymic8', 'FormerPosition8', 9);
SAVEPOINT mitka_insert;
INSERT INTO department_of_migration_service
VALUES (NULL, 'Odesa', 'Odesa', 'Slovatskoho', '12'),
	(NULL, 'Chernivtsi', 'Chernivtsi', 'Mazepy', '32'),
    (NULL, 'Ivano-Frankivsk', 'Kolomyiia', 'Shevchenka', '11');
ROLLBACK TO mitka_insert;

SELECT * FROM department_of_migration_service;

