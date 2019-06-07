USE passport1;

CREATE TRIGGER stuff_delete
BEFORE DELETE ON department_of_migration_service FOR EACH ROW
UPDATE stuff SET department_id=1 WHERE department_id = OLD.id;

DELETE FROM department_of_migration_service WHERE id = 5;
SELECT * FROM stuff;

CREATE TRIGGER passport_record_number
BEFORE INSERT ON passport FOR EACH ROW
SET NEW.record_number = aes_encrypt(NEW.record_number, 'key-key');

INSERT INTO passport VALUE(NULL, '120394913', '2016-03-06', '2026-03-06', 'UKR', 700, 'tourist', 2, 3, 'BK184921');
SELECT * FROM passport;

ALTER TABLE person
ADD COLUMN last_seen_in_migration_department DATE DEFAULT NULL;

CREATE TRIGGER person_last_s AFTER
INSERT ON passport FOR EACH ROW 
UPDATE person SET last_seen_in_migration_department = DATE(NEW.date_of_issue)
WHERE person.id = NEW.person_id;

INSERT INTO passport VALUE (NULL, '17480182474', '2016-07-05', '2026-07-05', 'UKR', 0, 'regular', 2, 4, 'BK109082');
SELECT * FROM person;