SELECT REPLACE('database', 'a', '@') AS result
FROM dual;

SELECT REPLACE('This is an old version', 'old', 'new') AS result
FROM dual;

CREATE TABLE product (
    product_name VARCHAR2(50)
);


INSERT INTO product VALUES ('Laptop');
INSERT INTO product VALUES ('Mouse');
INSERT INTO product VALUES ('Keyboard');

SELECT LPAD(product_name, 15, '*') AS padded_name
FROM product;

SELECT RPAD(product_name, 15, '#') AS padded_name
FROM product;

