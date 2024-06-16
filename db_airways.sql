DROP DATABASE IF EXISTS db_airways;
CREATE DATABASE db_airways;

USE db_airways;

CREATE TABLE person (
  name VARCHAR(50),
  address VARCHAR(100),
  phone VARCHAR(15),
  PRIMARY KEY (name)
);

CREATE TABLE passenger (
  ticket_number VARCHAR(20),
  name VARCHAR(20),
  PRIMARY KEY (ticket_number),
  FOREIGN KEY name REFERENCES person(name)
);

CREATE TABLE employee (
  employee_no INT(10),
  name VARCHAR(20),
  salary INT(20),
  PRIMARY KEY (employee_no),
  FOREIGN KEY name REFERENCES person(name)
);

CREATE TABLE departure (
  departure_date VARCHAR(20),
  flight_number INT(10),
  PRIMARY KEY (departure_date, flight_number)
);


CREATE TABLE assigned_to (
  employee_no INT(10),
  departure_date VARCHAR(20),
  flight_number INT(10),
  PRIMARY KEY (employee_no, departure_date, flight_number),
  FOREIGN KEY employee_no REFERENCES employee(employee_no),
  FOREIGN KEY (departure_date, flight_number) REFERENCES departure(departure_date, flight_number)
);

CREATE TABLE booked_on (
  ticket_number VARCHAR(20),
  departure_date VARCHAR(20),
  flight_number INT(10),
  PRIMARY KEY (ticket_number, departure_date, flight_number),
  FOREIGN KEY (departure_date, flight_number) REFERENCES departure(departure_date, flight_number),
  FOREIGN KEY ticket_number REFERENCES passenger(ticket_number)
);

CREATE TABLE flight (
  flight_number INT(10),
  origin VARCHAR(5),
  destination VARCHAR(5),
  departure_time VARCHAR(5),
  arrival_time VARCHAR(5),
  status VARCHAR(10),
  PRIMARY KEY (flight_number)
);

CREATE TABLE instance_of (
  departure_date VARCHAR(20),
  flight_number INT(10),
  PRIMARY KEY (departure_date),
  FOREIGN KEY flight_number REFERENCES flight(flight_number)

);

CREATE TABLE pilot (
  flight_Hours INT(20),
  employee_no INT(10),
  PRIMARY KEY (employee_no),
  FOREIGN KEY employee_no REFERENCES employee(employee_no)
);

CREATE TABLE plane (
  maker VARCHAR(10),
  model_no VARCHAR(10),
  PRIMARY KEY (model_no)
);

CREATE TABLE aircraft (
  serial_no INT(5),
  model_no VARCHAR(10),
  PRIMARY KEY (serial_no)
);

CREATE TABLE can_fly (
  employee_no INT(10),
  model_number VARCHAR(10),
  PRIMARY KEY (employee_no, model_number),
  FOREIGN KEY employee_no REFERENCES pilot(employee_no),
  FOREIGN KEY model_number REFERENCES plane(model_no)
);

CREATE TABLE type (
  serial_no INT(5),
  model_no VARCHAR(10),
  PRIMARY KEY (serial_no),
  FOREIGN KEY model_no REFERENCES plane(model_no)
);