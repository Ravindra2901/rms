CREATE DATABASE restaurant_managment_system;

-- Creating tables 
CREATE TABLE `Restaurant_Staff` (
	`id` INT Not NULL,
	`name` VARCHAR(50) NULL DEFAULT NULL,
	`role` VARCHAR(50) NULL DEFAULT NULL,
	`department` VARCHAR(50) NULL DEFAULT NULL,
	`Mobile` VARCHAR(50) NULL DEFAULT NULL,
	`Email` VARCHAR(50) NULL DEFAULT NULL,
	`Address` VARCHAR(50) NULL DEFAULT NULL,
	
	CONSTRAINT ID PRIMARY KEY (id)
);


CREATE TABLE `Orders` (
	`id` INT Not NULL,
	`menu_id` int not null,
	`table_no` INT Not NULL,
		`customer_id` INT Not NULL,
		`staff_id` INT Not NULL,

	`Datetime` VARCHAR(50) NULL DEFAULT NULL,
	`quantity` INT NULL DEFAULT NULL,
	`subtotal` Float NULL DEFAULT NULL,
	
	
	CONSTRAINT ID PRIMARY KEY (id)
);


CREATE TABLE `Menu` (
	`id` INT Not NULL,
	`name` VARCHAR(50) NULL DEFAULT NULL,
	`cost` Float(50) NULL DEFAULT NULL,
	
	CONSTRAINT ID PRIMARY KEY (id)
);


CREATE TABLE `Reservation` (
	`id` INT Not NULL,
			`customer_id` INT Not NULL,

	`datetime` VARCHAR(50) NULL DEFAULT NULL,
	`number_of_guest` INT NULL DEFAULT NULL,
	
	CONSTRAINT ID PRIMARY KEY (id)
);


CREATE TABLE `Customer` (
	`id` INT Not NULL,
	`name` VARCHAR(50) NULL DEFAULT NULL,
	`Mobile` VARCHAR(50) NULL DEFAULT NULL,
	`Email` VARCHAR(50) NULL DEFAULT NULL,
	`dob` VARCHAR(50) NULL DEFAULT NULL,
	`gender` VARCHAR(50) NULL DEFAULT NULL,
	`Address` VARCHAR(50) NULL DEFAULT NULL,
	
	CONSTRAINT ID PRIMARY KEY (id)
);


CREATE TABLE `Payment` (
	`id` INT Not NULL,
				`customer_id` INT Not NULL,

	`datetime` VARCHAR(50) NULL DEFAULT NULL,
	`type` VARCHAR(50) NULL DEFAULT NULL,
	`total` float NULL DEFAULT NULL,
	
	CONSTRAINT ID PRIMARY KEY (id)
);


--Loading data into the tables.


LOAD DATA LOW_PRIORITY LOCAL INFILE  'D:\\bin\\sql\\week2\\Restaurant_Staff.csv' REPLACE INTO TABLE 
`Restaurant_Staff`
FIELDS TERMINATED BY ',' ENCLOSED BY '\'' ESCAPED BY '\'' LINES TERMINATED BY '\r\n' IGNORE 1 LINES;

LOAD DATA LOW_PRIORITY LOCAL INFILE  'D:\\bin\\sql\\week2\\orders.csv' REPLACE INTO TABLE 
`orders`
FIELDS TERMINATED BY ',' ENCLOSED BY '\'' ESCAPED BY '\'' LINES TERMINATED BY '\r\n' IGNORE 1 LINES;

LOAD DATA LOW_PRIORITY LOCAL INFILE  'D:\\bin\\sql\\week2\\Reservation.csv' REPLACE INTO TABLE 
`reservation`
FIELDS TERMINATED BY ',' ENCLOSED BY '\'' ESCAPED BY '\'' LINES TERMINATED BY '\r\n' IGNORE 1 LINES;

LOAD DATA LOW_PRIORITY LOCAL INFILE  'D:\\bin\\sql\\week2\\Menu.csv' REPLACE INTO TABLE 
`menu`
FIELDS TERMINATED BY ',' ENCLOSED BY '\'' ESCAPED BY '\'' LINES TERMINATED BY '\r\n' IGNORE 1 LINES;

LOAD DATA LOW_PRIORITY LOCAL INFILE  'D:\\bin\\sql\\week2\\customer.csv' REPLACE INTO TABLE 
`customer`
FIELDS TERMINATED BY ',' ENCLOSED BY '\'' ESCAPED BY '\'' LINES TERMINATED BY '\r\n' IGNORE 1 LINES;

LOAD DATA LOW_PRIORITY LOCAL INFILE  'D:\\bin\\sql\\week2\\Payment.csv' REPLACE INTO TABLE 
`payment`
FIELDS TERMINATED BY ',' ENCLOSED BY '\'' ESCAPED BY '\'' LINES TERMINATED BY '\r\n' IGNORE 1 LINES;