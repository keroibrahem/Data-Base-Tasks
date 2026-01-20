CREATE TABLE students (
    name  VARCHAR2(50),
    marks NUMBER
);

INSERT INTO students VALUES ('kero', 95);
INSERT INTO students VALUES ('Mona', 85);
INSERT INTO students VALUES ('Ali', 75);
INSERT INTO students VALUES ('Sara', 60);
INSERT INTO students VALUES ('Omar', 88);

SELECT
    name,
    marks,
    CASE
        WHEN marks >= 90 THEN 'A'
        WHEN marks BETWEEN 80 AND 89 THEN 'B'
        WHEN marks BETWEEN 70 AND 79 THEN 'C'
        ELSE 'F'
    END AS grade
FROM students;



