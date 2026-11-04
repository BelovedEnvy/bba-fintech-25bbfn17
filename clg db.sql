USE college_db;

CREATE TABLE marks (
    mark_id INT PRIMARY KEY,
    student_id INT,
    subject VARCHAR(30),
    score INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);

INSERT INTO marks (mark_id, student_id, subject, score) VALUES
(1, 1, 'Marketing', 78),
(2, 1, 'Finance', 65),
(3, 2, 'Marketing', 88),
(4, 3, 'Accounts', 72),
(5, 4, 'Finance', 91);

SELECT s.name, m.subject, m.score
FROM students s
JOIN marks m ON s.student_id = m.student_id;

SELECT s.name, AVG(m.score) AS avg_score
FROM students s
JOIN marks m ON s.student_id = m.student_id
GROUP BY s.name
ORDER BY avg_score DESC;

SELECT s.name, m.score
FROM students s
JOIN marks m ON s.student_id = m.student_id
WHERE m.score > 75;