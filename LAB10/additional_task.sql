USE passport1;

DELIMITER //

CREATE PROCEDURE additional_task (IN PersonID INT UNSIGNED, IN record_number VARCHAR(20), IN date_of_issue DATE, 
IN date_of_expiry DATE, IN country_code CHAR(3), IN price SMALLINT, IN type_of_passport VARCHAR(20), IN StuffId INT, IN passport_number VARCHAR(8))
BEGIN
DECLARE error VARCHAR(20);
SET error = "Doesn`t exist";
IF EXISTS (SELECT * FROM person WHERE person.id = PersonID) THEN
BEGIN
INSERT INTO passport VALUE(NULL, record_number, date_of_issue, date_of_expiry, country_code, price, type_of_passport, StuffId, PersonID, passport_number);
END;
ELSE SELECT error;
END IF;
END;

CALL additional_task(1, "13895729rfhn", "2019-09-09", "2029-09-09", "UKR", 0, "regular", 3, "BK124247");
SELECT * FROM passport;

SELECT * FROM person;