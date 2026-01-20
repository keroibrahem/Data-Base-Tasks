SELECT TO_CHAR(SYSDATE, 'DD-MON-YYYY') AS current_date
FROM dual;

SELECT TO_CHAR(SYSDATE, 'Month YYYY') AS current_date
FROM dual;

SELECT TO_CHAR(12345.67, '99,999.99') AS formatted_number
FROM dual;

SELECT TO_CHAR(5000, '$9,999.99') AS salary
FROM dual;


