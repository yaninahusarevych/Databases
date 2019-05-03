USE passport1;


CREATE TABLE person1
	SELECT id, person_name, person_surname, town_or_village_registration FROM person 
		WHERE id<3;
        
CREATE TABLE person2
	SELECT id, person_name, person_surname, town_or_village_registration FROM person 
		WHERE id>2;
        
SELECT * FROM person1;
SELECT * FROM person2;