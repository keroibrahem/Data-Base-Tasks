/* 1. Employees where emp_id between 100 and 105 */
SELECT * 
FROM employees
WHERE emp_id BETWEEN 100 AND 105;

/* 2. Employees with specific emp_id values */
SELECT *
FROM employees
WHERE emp_id IN (151, 152, 153, 154, 155);

/* 3. first_name starts with P or p */
SELECT *
FROM employees
WHERE UPPER(first_name) LIKE 'P%';

/* 4. first_name ends with A or a */
SELECT *
FROM employees
WHERE UPPER(first_name) LIKE '%A';

/* 5. first_name contains A or a anywhere */
SELECT *
FROM employees
WHERE UPPER(first_name) LIKE '%A%';

/* 6. third character is e or E */
SELECT *
FROM employees
WHERE first_name LIKE '__e%'
   OR first_name LIKE '__E%';

/* 7. employees with NO manager */
SELECT *
FROM employees
WHERE manager_id IS NULL;

/* 8. employees who HAVE a manager */
SELECT *
FROM employees
WHERE manager_id IS NOT NULL;

/* 9. insert employee without manager */
INSERT INTO employees (emp_id, first_name, last_name, manager_id)
VALUES (300, 'Ali', 'Mahmoud', NULL);

/* 10. employees with job AD_VP or IT_PROG */
SELECT *
FROM employees
WHERE job_id IN ('AD_VP', 'IT_PROG');

/* 11. order by last_name ascending */
SELECT *
FROM employees
ORDER BY last_name ASC;

/* 12. order by hire_date descending */
SELECT *
FROM employees
ORDER BY hire_date DESC;

/* 13. order by department asc, salary desc */
SELECT *
FROM employees
ORDER BY department_id ASC, salary DESC;

/* 14. last_name lowercase */
SELECT LOWER(last_name)
FROM employees;

/* 15. first_name uppercase */
SELECT UPPER(first_name)
FROM employees;

/* 16. first_name + last_name title case */
SELECT INITCAP(first_name), INITCAP(last_name)
FROM employees;

/* 17. last_name = smith (case-insensitive) */
SELECT *
FROM employees
WHERE LOWER(last_name) = 'smith';
