/*
    Foreign key CONSTRAINT

    parent - courses
    child - students

    the foreign key constraint is used to prevent actions that would destroy links between two tables.
    
    A FOREIGN key is a field in one table that refers to the primary key in another table.

    selected_course is a FOREIGN key in students table which refers to course_id (primary key) in courses table.

    the table with the FOREIGN key is called the child table,the table with primary key is called the parent or REFERENCED
    table.

    

*/
CREATE DATABASE students;

USE students;

CREATE Table student(
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    student_fname VARCHAR(20) NOT NULL,
    student_lname VARCHAR(20) NOT NULL,
    student_mname VARCHAR(20),
    student_email VARCHAR(30) UNIQUE KEY,
    student_phonenumber VARCHAR(15) NOT NULL,
    student_alternate_phone VARCHAR(15),
    enrollment_date TIMESTAMP NOT NULL,
    year_of_exp INT NOT NULL
);

DESC student;

INSERT INTO student (student_fname, student_lname, student_mname, student_email, student_phonenumber, student_alternate_phone, enrollment_date, year_of_exp)
VALUES 
  ('Aditya', 'Shinde', 'Sanjay', 'adishinde611@gmail.com', '9028825545', null, '2024-02-21', 0),
  ('Mohit','Gaikwad','Sudir',null,'8923452345',null,'2024-1-23',3),
  ('Onkar', 'Shinde', 'Sanjay', 'onkarshinde270@gmail.com', '9823356145', null, '2024-01-22', 2);

CREATE TABLE courses(
    course_id INT NOT NULL,
    course_name VARCHAR(20) NOT NULL,
    course_duration_months INT NOT NULL,
    course_fee INT NOT NULL,
    PRIMARY key (course_id)
);

INSERT INTO courses (course_id , course_name , course_duration_months ,course_fee ) VALUES
 (1, 'big data' , 4 , 4500),
 (2, 'web development' , 5 , 5000),
 (3, ' ai development' , 6 , 6000);

ALTER TABLE student ADD COLUMN selected_course int NOT NULL DEFAULT 1;

UPDATE student set selected_course = 2 WHERE student_id = 1;

UPDATE student set selected_course = 3 WHERE student_id = 3;

ALTER TABLE student Add FOREIGN KEY(selected_course) REFERENCES courses(course_id);

SELECT * FROM student;

SELECT * FROM courses;

DESC student;