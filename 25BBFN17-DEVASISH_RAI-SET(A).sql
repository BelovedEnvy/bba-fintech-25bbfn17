CREATE DATABASE college_db;
USE college_db;
CREATE TABLE student (
    student_id int PRIMARY KEY,
    name varchar(50) not null,
    city varchar(30) default 'Bengaluru',
    marks INT
);
ALTER TABLE student add column age INT;
INSERT INTO student (student_id, name, city, marks, age) VALUES
(1, 'devasish', 'Bengaluru', 72, 19),
(2, 'aryan', 'Mysuru', 55, 20),
(3, 'dennis', 'Chennai', 81, 21),
(4, 'namratha', default, 64, 19),
(5, 'faizal', 'Hyderabad', 48, 22),
(6, 'mounish', 'Chennai', 67, 20),
(7, 'monjulika', 'Bengal', 59, 21),
(8, 'sourish', 'Bengal', 88, 20),
(9, 'Joshita', 'Hyderabad', 75, 22),
(10, 'hassan', 'punjab', 61, 19);
 
UPDATE student SET marks = 90 WHERE student_id = 2;
SELECT name, marks from student WHERE marks > 60 order by marks desc;
SELECT city, count(*) AS total_students, avg(marks) as avg_marks FROM student group by city;