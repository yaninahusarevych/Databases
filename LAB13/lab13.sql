USE passport1;

SHOW INDEX FROM passport;
SHOW INDEX FROM person;

CREATE INDEX passportINDX ON passport (id, date_of_issue);
SHOW INDEX FROM passport;

CREATE UNIQUE INDEX personUNINDX ON person (id, last_seen_in_migration_department);
SHOW INDEX FROM person;

EXPLAIN SELECT person.person_name, person.person_surname,
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

EXPLAIN SELECT passport.record_number, passport.passport_number, 
person.person_name, person.person_surname, person.person_patronymic, person.town_or_village_registration, 
stuff.id, stuff.head_name, stuff.head_surname, stuff.head_patronymic 
FROM (passport INNER JOIN stuff) INNER JOIN person
ON passport.stuff_id = stuff.id
AND passport.person_id = person.id
WHERE person.town_or_village_registration='''Lviv''';