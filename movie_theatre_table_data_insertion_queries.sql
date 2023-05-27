INSERT INTO Rewards
VALUES(
	DEFAULT,
	'jsmith',
	'abc123!',
	'Joe',
	'Smith',
	'jsmith@gmail.com',
	'413 Elm St',
	'Chicago',
	'IL',
	'60601',
	'USA',
	'1980-01-01'
), (
	DEFAULT,
	'bjoe',
	'abc123@',
	'Bobby',
	'Joe',
	'bjoe@gmail.com',
	'351 Sesamo St',
	'Chicago',
	'IL',
	'60610',
	'USA',
	'1992-06-12'
);

SELECT *
FROM rewards;

INSERT INTO product_costs
VALUES(
	DEFAULT,
	2.50,
	2.00,
	2.25,
	2.50,
	4.00,
	0.75,
	0.35,
	1.00,
	15.00,
	29.95
);

SELECT *
FROM product_costs;

DELETE FROM product_costs
WHERE product_costs_id = 1;

INSERT INTO payment_type
VALUES(
	DEFAULT,
	'yes',
	'no',
	'no',
	'no',
	'no'
), (
	DEFAULT,
	'no',
	'no',
	'yes',
	'no',
	'no'
);

INSERT INTO payment_type
VALUES(
	DEFAULT,
	'yes',
	'no',
	'no',
	'no',
	'no'
), (
	DEFAULT,
	'no',
	'no',
	'no',
	'no',
	'yes'
);

SELECT *
FROM payment_type;

INSERT INTO cc_payment_info
VALUES(
	DEFAULT,
	'2343080923433482',
	'2023-11-01',
	'068'
), (
	DEFAULT,
	'2580234838758932',
	'2024-06-01',
	'732'
);

SELECT *
FROM cc_payment_info;

ALTER TABLE cc_payment_info
ALTER COLUMN security_code TYPE VARCHAR(4);

UPDATE cc_payment_info
SET security_code = '068'
WHERE cc_payment_id =1;

SELECT *
FROM staff;

INSERT INTO staff
VALUES(
	DEFAULT,
	'Pat',
	'Theman'
), (
	DEFAULT,
	'Chris',
	'Gomez'
);

INSERT INTO movie
VALUES(
	DEFAULT,
	'Super Mario Bros. Movie',
	92,
	'PG',
	'2023-04-07'
), (
	DEFAULT,
	'Renfield',
	93,
	'R',
	'2023-04-14'
), (
	DEFAULT,
	'John Wick: Chapter 4',
	92,
	'R',
	'2023-03-24'
);

SELECT *
FROM movie;

INSERT INTO show_room
VALUES(
	DEFAULT,
	FALSE,
	FALSE,
	FALSE,
	FALSE,
	FALSE,
	FALSE,
	FALSE,
	FALSE,
	FALSE,
	FALSE,
	FALSE,
	FALSE,
	TRUE,
	TRUE,
	FALSE,
	FALSE,
	FALSE,
	FALSE,
	FALSE,
	FALSE,
	FALSE,
	FALSE,
	FALSE,
	FALSE,
	FALSE,
	FALSE,
	FALSE,
	FALSE,
	FALSE,
	FALSE,
	'2023-04-23 01:10:00'
);

INSERT INTO theatre_location
VALUES(
	DEFAULT,
	'200 Randhurst Village Drive',
	'Mt Prospect',
	'IL',
	60056,
	'USA'
), (
	DEFAULT,
	'322 East Illinois Street',
	'Chicago',
	'IL',
	60611,
	'USA'
);


UPDATE show_room
SET theatre_id = 1
WHERE show_room_id =1;



ALTER TABLE show_room
ALTER COLUMN time TYPE TIMESTAMP WITH TIME ZONE;

SELECT *
FROM theatre_location;

SELECT *
FROM show_room;

SELECT *
FROM movie;

SELECT *
FROM staff;

SELECT *
FROM product_costs;

SELECT *
FROM rewards;


