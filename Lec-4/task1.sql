CREATE TABLE emp_test (
	name VARCHAR(50)
);

INSERT INTO emp_test VALUES ('kero   ');
INSERT INTO emp_test VALUES ('   ibrahem   ');
INSERT INTO emp_test VALUES ('   Mona');
INSERT INTO emp_test VALUES ('Ali   ');
INSERT INTO emp_test VALUES ('   Sara   ');

SELECT TRIM(name) AS trimmed_name FROM emp_test;
SELECT LTRIM(name) AS Ltrimmed_name FROM emp_test;
SELECT RTRIM(name) AS Rtrimmed_name FROM emp_test;



INSERT INTO emp_test VALUES ('***kero***');
INSERT INTO emp_test VALUES ('##ibrahem##');

SELECT TRIM('*' FROM name) AS cleaned_name FROM emp_test;
SELECT TRIM('#' FROM name) AS cleaned_name FROM emp_test;
