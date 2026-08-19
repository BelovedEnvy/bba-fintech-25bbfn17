CREATE DATABASE student;
USE student;
CREATE TABLE details
(
  student_id INT,
  name VARCHAR(50),
  age INT,
  city VARCHAR(30),
  marks INT
);
INSERT INTO details(student_id,name,age,city,marks)
VALUES
(001,'Kevin',21,'Mumbai',60),
(002,'Jack',19,'Bengaluru',92),
(003,'Henry',20,'Delhi',79);
SELECT *FROM details;