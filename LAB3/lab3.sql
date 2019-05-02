USE  passport1;

ALTER TABLE passport
	MODIFY COLUMN type_of_passport ENUM('tourist', 'regular') NOT NULL,
	MODIFY COLUMN record_number VARCHAR(20) NOT NULL,
    ADD COLUMN passport_number VARCHAR(8) NOT NULL, 
    ADD CONSTRAINT UNIQUE UQ_record_no (record_number, passport_number);

ALTER TABLE stuff
	ADD COLUMN former_position VARCHAR(100) NOT NULL AFTER former_patronymic;

ALTER TABLE documents
	ADD COLUMN age_version SMALLINT(4) NOT NULL,
    ADD CONSTRAINT UNIQUE UQ_age_version (age_version); 

DESCRIBE passport;
DESCRIBE stuff;
DESCRIBE documents;