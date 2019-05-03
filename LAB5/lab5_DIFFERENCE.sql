USE passport1;

SELECT * FROM person1
	WHERE id NOT IN (SELECT id FROM person2);