USE passport1;

SELECT * FROM person1
	WHERE id IN (SELECT id FROM person2);