USE passport1;

SELECT person.person_name, person.person_surname,
passport.date_of_issue,
stuff.former_name, stuff.former_surname, 
department_of_migration_service.town_or_village, department_of_migration_service.street
FROM person, passport, stuff, department_of_migration_service
WHERE passport.person_id = person.id
AND passport.stuff_id = stuff.id
AND stuff.department_id = department_of_migration_service.id
AND department_of_migration_service.town_or_village='Lviv' 
AND department_of_migration_service.street='Chaykovskoho'
ORDER BY passport.date_of_issue DESC LIMIT 1;

SELECT person.person_name, person.person_surname,
passport.date_of_issue,
stuff.former_name, stuff.former_surname, 
department_of_migration_service.town_or_village, department_of_migration_service.street
FROM ((person INNER JOIN passport) INNER JOIN stuff) INNER JOIN department_of_migration_service
ON passport.person_id = person.id
AND passport.stuff_id = stuff.id
AND stuff.department_id = department_of_migration_service.id
WHERE department_of_migration_service.town_or_village='Lviv' 
AND department_of_migration_service.street='Chaykovskoho'
ORDER BY passport.date_of_issue DESC;