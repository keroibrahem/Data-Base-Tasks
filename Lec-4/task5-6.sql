SELECT
    name,
    marks,
    DECODE(
        TRUNC(TO_NUMBER(marks) / 10),
        9, 'A',
        8, 'B',
        7, 'C',
        'F'
    ) AS grade
FROM students;

CREATE TABLE orders (
    status CHAR(1)
);

INSERT INTO orders VALUES ('P');
INSERT INTO orders VALUES ('S');
INSERT INTO orders VALUES ('D');
INSERT INTO orders VALUES ('k');

SELECT
    status,
    DECODE(status,
           'P', 'Pending',
           'S', 'Shipped',
           'D', 'Delivered',
           'Unknown') AS status_description
FROM orders;



