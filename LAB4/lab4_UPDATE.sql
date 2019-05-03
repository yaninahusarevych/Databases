USE passport1;

UPDATE person SET appartment_number_registration='3a' WHERE id=4;
UPDATE passport SET id = id + 1 ORDER BY id DESC;

SELECT * FROM person;
SELECT * FROM passport;
