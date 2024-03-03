/*
    Distinct
    Order BY
    Limit
    Like

*/

/*
    Distinct
*/

SHOW DATABASES;

USE students;

SHOW TABLES;

DESC student;

ALTER TABLE student ADD COLUMN location VARCHAR(30) NOT NULL DEFAULT 'Pune';

SELECT * FROM student;

UPDATE student set location = 'Mumbai' WHERE student_id = 2;

SELECT DISTINCT location from student; -- distinct select

/*
    ORDER BY

    sort in ascending and decsending
*/

SELECT * FROM student ORDER BY year_of_exp; -- sort data in ascending ORDER 

SELECT * FROM student ORDER BY year_of_exp desc; -- sort data in descending order

SELECT student_fname,year_of_exp FROM student ORDER BY 1; -- ORDER BY student_fname

SELECT student_fname,year_of_exp FROM student ORDER BY 2; -- ORDER BY year_of_exp

/*
SELECT student_fname,years_of_exp from students order by years_of_exp,student_fname;

3 brain
3 carl
4
5

if order by is depending on two columns then if their is clash between two rows then it check for another column.

*/
SELECT * FROM student;
SELECT * from student ORDER BY year_of_exp DESC LIMIT 2; -- display first 2 rows