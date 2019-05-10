USE passport1;

SELECT region FROM department_of_migration_service WHERE id=1;

SELECT * FROM department_of_migration_service WHERE town_or_village='Lviv';
SELECT person.id, person.person_name, person.person_surname, person.person_patronymic,
passport.record_number, passport.passport_number
FROM person LEFT JOIN passport ON passport.person_id=person.id;


SELECT passport.id, passport.record_number, passport.passport_number, passport.price,
stuff.head_name, stuff.head_surname, stuff.head_patronymic
FROM passport INNER JOIN stuff ON stuff.id=passport.stuff_id
WHERE passport.price>0;

SELECT passport.record_number, passport.passport_number, 
person.person_name, person.person_surname, person.person_patronymic, person.town_or_village_registration, 
stuff.id, stuff.head_name, stuff.head_surname, stuff.head_patronymic 
FROM (passport INNER JOIN stuff) INNER JOIN person
ON passport.stuff_id = stuff.id
AND passport.person_id = person.id
WHERE person.town_or_village_registration='''Lviv''';

SELECT passport.record_number, passport.passport_number, 
person.id, person.person_name, person.person_surname, person.person_patronymic, person.town_or_village_registration
FROM person INNER JOIN passport
ON passport.person_id = person.id
WHERE passport.person_id IN (SELECT person.id FROM person WHERE person.town_or_village_registration IN ('''Truskavets''', '''Kyiv'''));

SELECT person.id, person.person_name, person.person_surname, person.person_patronymic FROM person
WHERE NOT EXISTS (SELECT * FROM passport WHERE passport.person_id = person.id)
ORDER BY person.id;


