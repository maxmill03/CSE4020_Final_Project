# CSE4020_Final_Project

TODO
- Reduction of ERD to relational schemes and Creation of DDL File; Testing the database on AWS RDS
  - Review relation pilot --> employee
      - Cannot add or update a child row: a foreign key constraint fails (`db_airways`.`pilot`, CONSTRAINT `pilot_ibfk_1` FOREIGN KEY (`employee_no`) REFERENCES `employee` (`employee_no`))
  - Review relation departure --> flight
- Writing Data to the Database and executing the query for part (c)
- The Trigger and Procedures in Part (d) and (e)
