DROP DATABASE IF EXISTS db_airways;
CREATE DATABASE db_airways;

USE db_airways;

CREATE TABLE person (
  name VARCHAR(50) PRIMARY KEY,
  address VARCHAR(100),
  phone VARCHAR(15)
);

CREATE TABLE passenger (
  ticket_number VARCHAR(20),
  name VARCHAR(20),
  PRIMARY KEY (ticket_number)
  FOREIGN KEY name REFERENCES person(name)
);

CREATE TABLE employee (
  employee_no INT(10)
  name VARCHAR(20)
  salary INT(20)
  PRIMARY KEY (employee_no)
  FOREIGN KEY name REFERENCES person(name)
);

CREATE TABLE departure (
  date VARCHAR(20)
  flight_number INT(10)
  PRIMARY KEY (dat, flight_number)
);


CREATE TABLE assigned_to (
  employee_no INT(10)
  date VARCHAR(20)
  flight_number INT(10)
  PRIMARY KEY (employee_no, date, flight_number)
  FOREIGN KEY employee_no REFERENCES employee(employee_no)
  FOREIGN KEY (date, flight_number) REFERENCES departure(date, flight_number)
);

CREATE TABLE booked_on (
  ticket_number VARCHAR(20)
  date VARCHAR(20)
  flight_number INT(10)
  PRIMARY KEY (ticket_number, date, flight_number)
  FOREIGN KEY (date, flight_number) REFERENCES departure(date, flight_number)
  FOREIGN KEY ticket_number REFERENCES passenger(ticket_number)
);

CREATE TABLE flight (
  flight_number INT(10)
  origin VARCHAR(5)
  destination VARCHAR(5)
  departure_time VARCHAR(5)
  arrival_time VARCHAR(5)
  status VARCHAR(10)
  PRIMARY KEY (flight_number)
);

CREATE TABLE instance_of (
  test
);