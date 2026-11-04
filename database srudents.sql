CREATE DATABASE college_db;
USE college_db;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    course VARCHAR(30),
    year INT,
    city VARCHAR(30)
);

INSERT INTO students (student_id, name, course, year, city) VALUES
(1, 'Rahul Sharma', 'BBA', 2, 'Bangalore'),
(2, 'Priya Nair', 'BBA', 2, 'Kochi'),
(3, 'Arjun Reddy', 'BCom', 1, 'Hyderabad'),
(4, 'Sneha Iyer', 'BBA', 3, 'Chennai'),
(5, 'Imran Khan', 'BCom', 2, 'Bangalore');

SELECT * FROM students;