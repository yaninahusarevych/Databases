USE passport1;

SELECT * FROM passport;

SELECT avg(datediff(current_date(), date_of_birth)/365) AS avg_age, 
passport.stuff_id, COUNT(passport.stuff_id) AS count_passports
FROM (person INNER JOIN passport) INNER JOIN stuff
ON person.id = passport.person_id
AND passport.stuff_id = stuff.id
GROUP BY passport.stuff_id;

