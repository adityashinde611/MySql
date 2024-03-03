/*
    Primary KEY
    Auto Increment KEY
    unique KEY
    Primary KEY vs unique KEY

*/

SHOW DATABASES;

USE company;

SHOW TABLES;


CREATE TABLE employee_2 (
    id INT AUTO_INCREMENT,
    firstname VARCHAR(20) NOT NULL,
    middlename VARCHAR(20),
    lastname VARCHAR(20) NOT NULL,
    age INT NOT NULL,
    salary INT NOT NULL,
    location varchar(20) NOT NULL DEFAULT 'Mumbai',
    PRIMARY KEY(id)
) -- primary key and auto increment use

INSERT INTO employee_2(firstname,lastname,age,salary) VALUES('aditya','shinde',21,20);
INSERT INTO employee_2(firstname,lastname,age,salary,location) VALUES('onkar','shinde',25,75000,'Pune');

SELECT * from employee_2;

/*
    unique KEY

    you can have only one primary KEY
    and the primary key cannot hold any NULL

    we should use primary key when we have to uniquely identify each record.

    unique key can hold NULL

    for example in mysql a unique key can hold any number null any number of time.

    in some of the other famous DB's unique key hold only one null so the purpose of unique key is to make sure the values do not duplicate 

    we can have onlu one primary key but multiple unique keys in a table.
*/

CREATE TABLE employee_4 (
    id INT UNIQUE KEY,
    firstname VARCHAR(20) NOT NULL,
    middlename VARCHAR(20),
    lastname VARCHAR(20) NOT NULL,
    age INT NOT NULL,
    salary INT NOT NULL,
    location varchar(20) NOT NULL DEFAULT 'Mumbai'
) -- unique key 

INSERT INTO employee_4(firstname,lastname,age,salary) VALUES ('aditya','shinde',21,0),('onkar','shinde',25,75000);

SELECT * FROM employee_4;

/*
    composite unique key
*/

CREATE TABLE employee_5 (
    
    firstname VARCHAR(20),
    middlename VARCHAR(20),
    lastname VARCHAR(20),
    age INT NOT NULL,
    salary INT NOT NULL,
    location varchar(20) NOT NULL DEFAULT 'Mumbai',
    UNIQUE KEY(firstname,lastname)
) -- unique key composition

INSERT INTO employee_5(firstname , middlename , lastname , age , salary ) VALUES('aditya','sanjay',null,21,0),('onkar','sanjay','shinde',25,75000),('aditya','sanjay','shinde',21,0);

INSERT INTO employee_5(firstname , middlename , lastname , age , salary ) VALUES(null,'sanjay','shinde',21,0),(null,'sanjay',null,21,0);

SELECT * FROM employee_5;

/*

    Composite primary key 
*/

CREATE TABLE employee_3 (
    
    firstname VARCHAR(20) NOT NULL,
    middlename VARCHAR(20),
    lastname VARCHAR(20) NOT NULL,
    age INT NOT NULL,
    salary INT NOT NULL,
    location varchar(20) NOT NULL DEFAULT 'Mumbai',
    PRIMARY KEY(firstname,lastname)
) -- primary key composition


DESC employee_3;

INSERT INTO employee_3(firstname,lastname,age,salary) VALUES ('aditya','shinde',21,0),('onkar','shinde',25,75000);

SELECT * FROM employee_3;

