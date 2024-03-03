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

/* LIKE */

SHOW TABLES;

DESCRIBE courses;

DESC student;
/* non cas sensitive */
select student_id,student_fname FROM student WHERE student_fname LIKE '%a%'; -- Like is used to find with given initial in string %a% means if a contain in student_fname at any position display

select student_id,student_fname FROM student WHERE student_fname LIKE 'a%'; -- Like is used to find with given initial in string a% means if a contain as first character in student_fname  display

select student_id,student_fname FROM student WHERE student_fname LIKE '%a'; -- Like is used to find with given initial in string %a% means if a contain at last position in student_fname display

SELECT * FROM student;

SELECT student_fname,student_id FROM student WHERE student_fname LIKE '_____'; -- it count the underscore if 5 then print 5 letter name 

