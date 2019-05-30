USE passport1;

CREATE FUNCTION passport_encode (zminna VARCHAR(20))
RETURNS TINYBLOB DETERMINISTIC
RETURN aes_encrypt(zminna, 'key-key');

CREATE FUNCTION passport_decode (zminna TINYBLOB)
RETURNS VARCHAR(20) DETERMINISTIC
RETURN aes_decrypt(zminna, 'key-key');

DELIMITER //

CREATE PROCEDURE passport_count (IN date1 DATE, IN date2 DATE)
BEGIN
DECLARE error CHAR;
SET error = "Incorrect";
IF (date1 < date2) THEN
BEGIN
CREATE TABLE IF NOT EXISTS passports_departments (department_city VARCHAR(100), amount_of_passports INT UNSIGNED);
TRUNCATE passports_departments;
INSERT INTO passports_departments SELECT department_of_migration_service.town_or_village AS department_city,
count(passport.id) AS amount_of_passports
FROM (passport INNER JOIN stuff) INNER JOIN department_of_migration_service
ON passport.stuff_id = stuff.id
AND stuff.department_id = department_of_migration_service.id
WHERE passport.date_of_issue BETWEEN date1 AND date2
GROUP BY department_city;
END;
ELSE SELECT error;
END IF;
END //
DELIMITER ;

SELECT passport_encode(record_number), person_id 
FROM passport;

CALL passport_count('2012-06-05', '2018-05-05');
SELECT * FROM passports_departments;

CALL passport_count('1999-02-02', '1970-05-05');