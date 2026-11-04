USE college_db;

SELECT name, course FROM students;

SELECT * FROM students WHERE city = 'Bangalore';

SELECT * FROM students WHERE year >= 2 AND course = 'BBA';

SELECT * FROM students ORDER BY name ASC;

SELECT COUNT(*) AS total_students FROM students;

SELECT course, COUNT(*) AS students_in_course
FROM students
GROUP BY course;