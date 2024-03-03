/*
    CURD OPERATION
*/

/*
    Select
*/

SHOW DATABASES;

USE company;

SELECT * FROM employee_2; -- selecting all COLUMNS

SELECT firstname,lastname FROM employee_2; -- selecting specified COLUMNS

SELECT * from employee_2 WHERE age >= 20; -- selecting bt applying where clause

SELECT * FROM employee_2 WHERE firstname = 'Aditya';--selecting by first name as it is not case sensitive.

SELECT * FROM employee_2 WHERE BINARY firstname = 'Aditya'; -- to make it case sensitive we use binary.ADD

SELECT firstname as name,lastname as surname FROM employee_2;  --alias name for COLUMNS

/*
    UPDATE
*/

UPDATE employee_2 set lastname = 'parit' WHERE firstname = 'aditya';-- update employee_2 

UPDATE employee_2 set location = 'Pune' WHERE firstname = 'aditya';

UPDATE employee_2 set salary = salary + 5000; -- increase salary column by 5000

UPDATE employee_2 set location = 'Mumbai' WHERE firstname = 'aditya' and lastname = 'parit'; -- update specific by and operation

UPDATE employee_2 set middlename = 'sanjay' WHERE lastname = 'parit';

/*
    Delete
*/

DESC employee_2;

SELECT * FROM employee_2;

DELETE FROM employee_2 WHERE id = 4; -- delete specific row


/*
    Alter - Is not part of CURD

    Alter is to alter the structure of the table(schema)
*/

ALTER TABLE employee_2 ADD COLUMN jobtitle VARCHAR(30); -- Add jobtitle column to schema

ALTER TABLE employee_2 DROP COLUMN jobtitle ; -- delete the column from TABLE

ALTER TABLE employee_2 MODIFY COLUMN firstname VARCHAR(30); -- modify the size of firstname

ALTER TABLE employee_2 DROP AUTO_INCREMENT; -- cannot directly drop primary key if their exist AUTO_INCREMENT and we cannot drop AUTO_INCREMENT directly also

ALTER TABLE employee_2 MODIFY id INT; -- firstly MODIFY AUTO_INCREMENT to INT

ALTER TABLE employee_2 DROP PRIMARY KEY;


/*
    DDL vs DML

    DATA DEFINATION LANGUAGE - Deals with table structure 
    Create , Alter , Drop - DDL commands

    DATA MANIPULATION LANGUAGE - here we deals with the data directly.

    insert , update , delete - DML commands


    delete from employee -- DML -- delete all rows

    truncate also removes all records - DDL
    truncate internally drops the table and recreates it.
*/

TRUNCATE TABLE employee;

DELETE from employee_2;

