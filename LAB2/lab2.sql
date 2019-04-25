CREATE DATABASE PassportCreation;

CREATE TABLE PassportCreation.department_of_migration_service (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    region VARCHAR(50) NOT NULL,
    town_or_village VARCHAR(50) NOT NULL,
    street VARCHAR(80) NOT NULL,
    house_number VARCHAR(10) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE PassportCreation.stuff (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    head_name VARCHAR(50) NOT NULL,
    head_surname VARCHAR(50) NOT NULL,
    head_patronymic VARCHAR(50),
    former_name VARCHAR(50) NOT NULL,
    former_surname VARCHAR(50) NOT NULL,
    former_patronymic VARCHAR(50) NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT department_id FOREIGN KEY (id)
    REFERENCES PassportCreation.department_of_migration_service (id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE PassportCreation.person (
	id INT UNSIGNED NOT NULL,
    person_name VARCHAR(50) NOT NULL,
    person_surname VARCHAR(50) NOT NULL,
    person_patronymic VARCHAR(50),
    sex ENUM ('male', 'female') NOT NULL,
    date_of_birth DATE NOT NULL,
    region_registration VARCHAR(50) NOT NULL,
    town_or_village_registration VARCHAR(50) NOT NULL,
    street_registration VARCHAR(80) NOT NULL, 
    house_number_registration VARCHAR(10) NOT NULL,
    appartment_number_registration VARCHAR(10),
    date_registration DATE NOT NULL,
    region_birth VARCHAR(50) NOT NULL,
    town_or_village_birth VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE PassportCreation.passport (
	id INT UNSIGNED NOT NULL,
    record_number INT UNSIGNED NOT NULL,
    date_of_issue DATE NOT NULL,
    date_of_expiry DATE NOT NULL,
    country_code CHAR(3) NOT NULL,
    price SMALLINT UNSIGNED,
    type_of_passport CHAR NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT stuff_id FOREIGN KEY (id)
    REFERENCES PassportCreation.stuff (id) ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT person_id FOREIGN KEY (id)
    REFERENCES PassportCreation.person (id) ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE PassportCreation.documents (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    photo BLOB NOT NULL,
    stemp BLOB NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT passport_id FOREIGN KEY (id)
    REFERENCES PassportCreation.passport (id) ON DELETE NO ACTION ON UPDATE NO ACTION
);

