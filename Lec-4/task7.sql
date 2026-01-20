/* =====================================================
   1. Character Functions – Part 3
   TRIM / LTRIM / RTRIM
===================================================== */


CREATE TABLE customers (
    full_name VARCHAR2(50)
);

INSERT INTO customers VALUES ('   kero ibrahem   ');
INSERT INTO customers VALUES (' Mona Hassan');
INSERT INTO customers VALUES ('Khaled Samy   ');
INSERT INTO customers VALUES ('###Sara###');

SELECT TRIM(full_name) AS trimmed_name
FROM customers;

SELECT LTRIM(full_name) AS Ltrimmed_name
FROM customers;

SELECT RTRIM(full_name) AS Rtrimmed_name
FROM customers;

SELECT TRIM('#' FROM full_name) AS cleaned_name
FROM customers;


/* =====================================================
   2. Character Functions – Part 4
   REPLACE / LPAD / RPAD
===================================================== */

SELECT REPLACE('promotion', 'o', '0') AS result
FROM dual;

SELECT REPLACE('This is a basic course', 'basic', 'advanced') AS result
FROM dual;

CREATE TABLE departments_1 (
    dept_name VARCHAR2(3)
);

INSERT INTO departments_1 VALUES ('HR');
INSERT INTO departments_1 VALUES ('IT');
INSERT INTO departments_1 VALUES ('Sales');

SELECT LPAD(dept_name, 15, '*') AS padded_name
FROM departments_1;

SELECT LPAD(dept_name, 15, '-') AS padded_name
FROM departments_1;

/* =====================================================
   3. TO_CHAR Function
===================================================== */

SELECT TO_CHAR(SYSDATE, 'DD-MON-YYYY') FROM dual;

SELECT TO_CHAR(SYSDATE, 'Day, Month YYYY') FROM dual;

SELECT TO_CHAR(12345.67, '99,999.99') FROM dual;

SELECT TO_CHAR(5000, '$99,999') FROM dual;

SELECT TO_CHAR(SYSDATE, 'YYYY/MM/DD HH24:MI:SS') FROM dual;

/* =====================================================
   4. Oracle Conditional Expressions – CASE
===================================================== */

CREATE TABLE students (
    name VARCHAR2(30),
    score NUMBER
);

INSERT INTO students VALUES ('Ali', 95);
INSERT INTO students VALUES ('Mona', 82);
INSERT INTO students VALUES ('Hassan', 74);
INSERT INTO students VALUES ('Sara', 65);
INSERT INTO students VALUES ('Omar', 50);

SELECT
    name,
    score,
    CASE
        WHEN score >= 90 THEN 'A'
        WHEN score >= 80 THEN 'B'
        WHEN score >= 70 THEN 'C'
        ELSE 'F'
    END AS grade
FROM students;

SELECT
    name,
    score,
    CASE
        WHEN score >= 60 THEN 'Pass'
        ELSE 'Fail'
    END AS result
FROM students;

SELECT
    name,
    CASE
        WHEN score >= 90 THEN 'Excellent'
        WHEN score >= 80 THEN 'Good'
        WHEN score >= 70 THEN 'Average'
        ELSE 'Needs Improvement'
    END AS message
FROM students;

SELECT 'Today is ' || TO_CHAR(SYSDATE, 'Day') AS today
FROM dual;

/* =====================================================
   5. Oracle Conditional Expressions – DECODE
===================================================== */

SELECT
    name,
    score,
    DECODE(score,
        100, 'A',
        90, 'B',
        80, 'C',
        'F'
    ) AS grade
FROM students;

CREATE TABLE status_log (
    status_code CHAR(1)
);

INSERT INTO status_log VALUES ('N');
INSERT INTO status_log VALUES ('I');
INSERT INTO status_log VALUES ('C');

SELECT
    status_code,
    DECODE(status_code,
        'N', 'New',
        'I', 'In Progress',
        'C', 'Completed'
    ) AS status
FROM status_log;

SELECT
    quantity,
    DECODE(quantity, 0, 'Out of Stock', 'Available') AS status
FROM products;

SELECT
    department,
    DECODE(department,
        'HR', 500,
        'IT', 1000,
        'Sales', 1500,
        300
    ) AS bonus
FROM employees;



