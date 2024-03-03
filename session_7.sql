SHOW DATABASES;
USE students;

SHOW TABLES;

DESC student;

INSERT INTO student (student_fname, student_lname, student_mname, student_email, student_phonenumber, student_alternate_phone, enrollment_date, year_of_exp, selected_course, location)
VALUES ('Aditya', 'Shinde', 'Sanjay', null, '9028825545', NULL, '2024-03-04', 0, 2, 'Pune');

SELECT DISTINCT student_id FROM student ORDER BY student_fname;