CREATE TABLE Payment_Type (
  payment_type_id SERIAL PRIMARY KEY,
  credit_card BOOLEAN,
  cash BOOLEAN,
  gift_card BOOLEAN,
  "check" BOOLEAN,
  bitcoin BOOLEAN
);

CREATE TABLE Rewards (
  reward_id SERIAL PRIMARY KEY,
  username VARCHAR(20),
  "password" VARCHAR(20),
  first_name VARCHAR(20),
  last_name VARCHAR(30),
  email VARCHAR(35),
  street_address VARCHAR(35),
  city VARCHAR(20),
  "state" VARCHAR(20),
  zip VARCHAR(20),
  country VARCHAR(30),
  date_of_birth DATE
);

CREATE TABLE Staff (
  staff_id SERIAL PRIMARY KEY,
  first_name VARCHAR(20),
  last_name VARCHAR(30)
);

CREATE TABLE CC_Payment_Info (
  cc_payment_id SERIAL PRIMARY KEY,
  cc_number INTEGER,
  exp_date DATE,
  security_code INTEGER
);

CREATE TABLE Theatre_Location (
  theatre_id SERIAL PRIMARY KEY,
  street_address VARCHAR(35),
  city VARCHAR(20),
  "state" VARCHAR(20),
  zip VARCHAR(20),
  country VARCHAR(30)
);

CREATE TABLE Show_Room (
  show_room_id SERIAL PRIMARY KEY,
  seat_1 BOOLEAN,
  seat_2 BOOLEAN,
  seat_3 BOOLEAN,
  seat_4 BOOLEAN,
  seat_5 BOOLEAN,
  seat_6 BOOLEAN,
  seat_7 BOOLEAN,
  seat_8 BOOLEAN,
  seat_9 BOOLEAN,
  seat_10 BOOLEAN,
  seat_11 BOOLEAN,
  seat_12 BOOLEAN,
  seat_13 BOOLEAN,
  seat_14 BOOLEAN,
  seat_15 BOOLEAN,
  seat_16 BOOLEAN,
  seat_17 BOOLEAN,
  seat_18 BOOLEAN,
  seat_19 BOOLEAN,
  seat_20 BOOLEAN,
  seat_21 BOOLEAN,
  seat_22 BOOLEAN,
  seat_23 BOOLEAN,
  seat_24 BOOLEAN,
  seat_25 BOOLEAN,
  seat_26 BOOLEAN,
  seat_27 BOOLEAN,
  seat_28 BOOLEAN,
  seat_29 BOOLEAN,
  seat_30 BOOLEAN,
  time TIME,
  theatre_id INTEGER,
    FOREIGN KEY (theatre_id)
    REFERENCES theatre_location(theatre_id)
);

CREATE TABLE Movie (
  movie_id SERIAL PRIMARY KEY,
  title VARCHAR(25),
  time_length_min INTEGER,
  rating VARCHAR(10),
  release_date DATE,
  show_room_id INTEGER,
  	FOREIGN KEY (show_room_id)
	REFERENCES Show_Room(show_room_id)
);


CREATE TABLE Checkout (
  checkout_id SERIAL PRIMARY KEY,
  reward_id INTEGER,
  staff_id INTEGER,
  payment_type_id INTEGER,
  cc_payment_id INTEGER,
    FOREIGN KEY (payment_type_id)
    REFERENCES Payment_Type(payment_type_id),
    FOREIGN KEY (reward_id)
    REFERENCES Rewards(reward_id),
    FOREIGN KEY (staff_id)
    REFERENCES Staff(staff_id),
    FOREIGN KEY (cc_payment_id)
    REFERENCES CC_Payment_Info(cc_payment_id)
);

CREATE TABLE Booth_Purchase (
  booth_purchase_id SERIAL PRIMARY KEY,
  ticket_cart_id INTEGER,
  checkout_id INTEGER,
    FOREIGN KEY (ticket_cart_id)
    REFERENCES Ticket_Rewards_Cart(ticket_cart_id),
	FOREIGN KEY (checkout_id)
    REFERENCES Checkout(checkout_id)
);



CREATE TABLE Ticket_Rewards_Cart (
  ticket_cart_id SERIAL PRIMARY KEY,
  seat_numbers VARCHAR,
  new_rewards_member BOOLEAN,
  show_room_id INTEGER,
    FOREIGN KEY (show_room_id)
    REFERENCES Show_Room(show_room_id)
);

CREATE TABLE Product_Costs (
  product_costs_id SERIAL PRIMARY KEY,
  soda_cost DECIMAL(5,2),
  water_cost DECIMAL(5,2),
  candy_cost DECIMAL(5,2),
  hot_dog_cost DECIMAL(5,2),
  brisket_sandwich_cost DECIMAL(5,2),
  cheese_cup_cost DECIMAL(5,2),
  cookie_dough_cup DECIMAL(5,2),
  milk_shake DECIMAL(5,2),
  ticket_cost DECIMAL(5,2),
  rewards_membership_cost DECIMAL(5,2),
  checkout_id INTEGER,
    FOREIGN KEY (checkout_id)
    REFERENCES Checkout(checkout_id)
	
);

CREATE TABLE Concession_Purchase_Quantities (
  concession_id SERIAL PRIMARY KEY,
  soda INTEGER,
  water INTEGER,
  candy INTEGER,
  hot_dog INTEGER,
  brisket_sandwich INTEGER,
  cheese_cup INTEGER,
  cookie_dough_cup INTEGER,
  milk_shake INTEGER,
  checkout_id INTEGER,
    FOREIGN KEY (checkout_id)
    REFERENCES Checkout(checkout_id)
);

CREATE TABLE E_Purchase (
  e_purchase_id SERIAL PRIMARY KEY,
  ticket_cart_id INTEGER,
  checkout_id INTEGER,
    FOREIGN KEY (checkout_id)
    REFERENCES Checkout(checkout_id)
);

