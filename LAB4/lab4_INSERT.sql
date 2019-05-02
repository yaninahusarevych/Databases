USE passport1;
SET SESSION sql_mode = '';
INSERT INTO department_of_migration_service VALUES (0, 'Lviv', 'Lviv', 'Chaykovskoho', '18');
INSERT INTO department_of_migration_service 
VALUES (NULL, 'Lviv', 'Lviv', 'Slovatskoho', '15'),
	(NULL, 'Lviv', 'Truskavets', 'Mazepy', '3'),
    (NULL, 'Kyiv', 'Kyiv', 'Shevchenka', '14');
LOAD DATA INFILE 'C://ProgramData//MySQL//MySQL Server 8.0//Uploads//person.tbl' INTO TABLE person LINES TERMINATED BY '\r\n';
LOAD DATA INFILE 'C://ProgramData//MySQL//MySQL Server 8.0//Uploads//stuff.txt' INTO TABLE stuff LINES TERMINATED BY '\r\n';
LOAD DATA INFILE 'C://ProgramData//MySQL//MySQL Server 8.0//Uploads//passport.tbl' INTO TABLE passport LINES TERMINATED BY '\r\n';