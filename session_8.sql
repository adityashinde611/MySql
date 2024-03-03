/*
    Aggregate FUNCTION
    count()
*/

SHOW DATABASES;

USE students;

SHOW TABLES;

SELECT count(*) FROM student; -- return the count of ROWS

SELECT COUNT(DISTINCT student_fname) FROM student; -- DISTINCT count on column student_fname

/*Group by */

SELECT * FROM student;

ALTER TABLE student ADD COLUMN social_media varchar(20) DEFAULT 'Linkedin';

UPDATE student set social_media = 'Facebook' WHERE location = 'Mumbai';

SELECT social_media,COUNT(*) FROM student GROUP BY social_media; -- GROUP BY social media 