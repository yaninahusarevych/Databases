USE passport1;

START TRANSACTION;
INSERT INTO department_of_migration_service 
VALUES (NULL, 'Odesa', 'Odesa', 'Slovatskoho', '7'),
	(NULL, 'Chernivtsi', 'Chernivtsi', 'Mazepy', '2'),
    (NULL, 'Ivano-Frankivsk', 'Kolomyiia', 'Shevchenka', '1');
COMMIT;

START TRANSACTION;
INSERT INTO passport
VALUES (NULL, 'Nadiia', 'Chorna', 'Andriivna', 'FormerName1', 'FormerSurname1', 'FormerPatronymic1', 'FormerPosition1', 10),
(NULL, 'HeadName2', 'HeadSurname2', 'HeadPatronymic2', 'FormerName2', 'FormerSurname2', 'FormerPatronymic2', 'FormerPosition2', 5),
(NULL, 'HeadName3', 'HeadSurname3', 'HeadPatronymic3', 'FormerName3', 'FormerSurname3', 'FormerPatronymic3', 'FormerPosition3', 8),
(NULL, 'HeadName4', 'HeadSurname4', 'HeadPatronymic4', 'FormerName4', 'FormerSurname4', 'FormerPatronymic4', 'FormerPosition4', 9);
COMMIT;

SELECT * FROM stuff;