USE passport1;

SELECT passport.stuff_id AS stuff_id, person.person_name, person.person_surname,
passport.record_number, COUNT(passport.stuff_id) AS CountStuff
FROM person INNER JOIN passport
ON person.id = passport.person_id
GROUP BY passport.stuff_id;

SELECT YEAR(date_of_issue) AS year, MONTHNAME(date_of_issue) AS month,
COUNT(record_number) AS passports
FROM passport
GROUP BY year, month; 

SELECT YEAR(date_of_issue) AS year, MONTHNAME(date_of_issue) AS MONTH,
AVG(price) AS avg_price
FROM passport
GROUP BY year, month;

SELECT town_or_village_registration AS location,
MIN(price) AS min_price, MAX(price) AS max_price, COUNT(town_or_village_registration) AS count_people
FROM person INNER JOIN passport
ON person.id = passport.person_id
GROUP BY location;

