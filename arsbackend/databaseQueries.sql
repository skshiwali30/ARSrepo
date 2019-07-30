-- Database name - airlines

CREATE DATABASE airlines;

CREATE TABLE FLIGHT (
	id int AUTO_INCREMENT,
	code varchar(30),
	source varchar(20),
	destination varchar(20),
	departureTime varchar(10),
	arrivalTime varchar(10),
	days varchar(20),
	no_of_seats int(10),
	is_active BOOLEAN,
	fare double,
	constraint pk_flightDetails_id primary key(id)
);

CREATE TABLE user_detail (
	id int AUTO_INCREMENT,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	role VARCHAR(50),
	enabled BOOLEAN,
	password VARCHAR(60),
	email VARCHAR(100),
	contact_number VARCHAR(15),	
	CONSTRAINT pk_user_id PRIMARY KEY(id)
);	

-- the address table to store the user address.
CREATE TABLE address (
	id int AUTO_INCREMENT,
	user_id int,
	address_line_one VARCHAR(100),
	address_line_two VARCHAR(100),
	city VARCHAR(20),
	state VARCHAR(20),
	country VARCHAR(20),
	postal_code VARCHAR(10),
	is_billing BOOLEAN,
	is_shipping BOOLEAN,
	CONSTRAINT fk_address_user_id FOREIGN KEY (user_id ) REFERENCES user_detail (id),
	CONSTRAINT pk_address_id PRIMARY KEY (id)
);

CREATE TABLE payment(
	id AUTO_INCREMENT,
	creditCardNumber varchar(30),
	flightId INT,
	expiryDateMM INT,
	expiryDateYY INT,
	cvCode INT,
	finalPayment double,
	CONSTRAINT pk_payment_id primary key(id),
	CONSTRAINT fk_payment_flight_id FOREIGN KEY (flightId) REFERENCES flight (id)
);
