CREATE database student;
USE student;
CREATE TABLE details(student_id int, name varchar(30),CGPA decimal (3,2), mail varchar(50));
CREATE table detials (student_id int Primary key,Name varchar(40), Age int, Mail varchar(50), CGPA Decimal(3,2));
INSERT INTO details (
Student_id,
Name, Age , Mail , CGPA)
VALUES (001, 'Devasish','20','envybeloved@gmail.com',9.9),
(002, 'tesoro mio','21','beloved@gmail.com',9.9),
(003, 'Envy','19','envy@gmail.com',9.9);
SELECT*FROM details;
SELECT Mail, CGPA FROM Details;
SELECT*FROM details WHERE CGPA=9.9;
SELECT*FROM details WHERE Age>10;
UPDATE students SET marks = 95 WHERE student_id = 1;

DELETE FROM students WHERE student_id = 2;
SELECT * FROM students ORDER BY marks;

SELECT * FROM students ORDER BY marks DESC;