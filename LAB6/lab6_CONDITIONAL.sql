USE passport1;

SELECT * FROM person;
SELECT * FROM passport;
SELECT person.id, person.person_name, person.person_surname, person.person_patronymic,
passport.id, passport.record_number, passport.passport_number
FROM person, passport
WHERE passport.person_id = person.id AND passport.date_of_issue < person.date_of_birth;

