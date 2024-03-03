/*
Recape
    SHOW DATABASES;
    CREATE DATABASE student;
    USE student;
    SELECT DATABASE();
    CREATE TABLE marks(name VARCHAR(20),rollno INT , marks INT);
    DESC marks;
    DROP TABLE marks;
    DROP DATABASE student;
*/

/*
    CRUD OPERATION
    CREATE - insert statement;
    READ - SELECT statement;
    UPDATE - UPDATE statement;
    DELETE - DELETE statement
*/

SHOW DATABASES;

USE company;

SHOW TABLES;

DESC employee;

DROP TABLE employee;

CREATE TABLE employee(  
    firstname VARCHAR(20),
    middlename VARCHAR(20),
    lastname VARCHAR(20),
    age INT ,
    salary INT,
    location VARCHAR(20)
) -- DATA DEFINATION LANGUAGE (DDL)

INSERT INTO employee(firstname,middlename,lastname,age,salary,location) VALUES ('aditya','sanjay','shinde',21,0,'Pune'); -- insert the values in TABLE

INSERT INTO employee(firstname,lastname,age,salary,location) VALUES ('aditya','shinde',21,0,'Pune'); -- insert the values in TABLE without middlename

INSERT INTO employee(firstname , middlename , lastname , age , salary ,location) VALUES ('onkar','sanjay','shinde',25,75000,'Pune'),('abhishek','Ratankar','Rout',21,0,'Pune'); -- insert multiple values in one insert statement

SELECT * from employee;


CREATE TABLE employee_1(  
    firstname VARCHAR(20) NOT NULL,
    middlename VARCHAR(20),
    lastname VARCHAR(20) NOT NULL,
    age INT NOT NULL,
    salary INT NOT NULL,
    location VARCHAR(20) NOT NULL DEFAULT 'Pune'
) -- DATA DEFINATION LANGUAGE (DDL)

INSERT INTO employee_1(firstname,middlename,lastname,age,salary,location) VALUES ('aditya','sanjay','shinde',21,0,'Pune'); -- insert the values in TABLE

INSERT INTO employee_1(firstname,lastname,age,salary,location) VALUES ('aditya','shinde',21,0,'Pune'); -- insert the values in TABLE without middlename

INSERT INTO employee_1(firstname , middlename , lastname , age , salary ,location) VALUES ('onkar','sanjay','shinde',25,75000,'Pune'),('abhishek','Ratankar','Rout',21,0,'Pune'); -- insert multiple values in one insert statement

INSERT INTO employee_1(firstname,middlename,lastname,age,salary) VALUES ('aditya','sanjay','shinde',21,0); -- insert the values in TABLE

SELECT * FROM employee; -- show contains of table