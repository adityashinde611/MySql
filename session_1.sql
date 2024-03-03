show databases; --To list the database available in system we use 

create database If NOT EXISTS company; -- create the database

drop database employees; --Delete the database 

use company; -- Enter in specified database

select database(); -- Check in which database we are currently

create table employee(name VARCHAR(50),age INT, salary INT); -- create table 

SHOW TABLES; -- list table in DATABASE

DESC employee; -- describe structure of TABLE

drop Table employee; -- delete table 

SHOW TABLES;

CREATE Table company.employee(name VARCHAR(20),age INT,salary INT); -- create a table in database without using database

SHOW DATABASES;

USE company;

SHOW TABLES;

DESC employee;
