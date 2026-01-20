-- 1. Average salary
SELECT AVG(salary) AS avg_salary FROM employees;

-- 2. Total employees
SELECT COUNT(*) AS total_employees FROM employees;

-- 3. Maximum salary
SELECT MAX(salary) AS max_salary FROM employees;

-- 4. Minimum salary
SELECT MIN(salary) AS min_salary FROM employees;

-- 5. Total salary
SELECT SUM(salary) AS total_salary FROM employees;

-- 6. Avg salary by department
SELECT department_id, AVG(salary) AS avg_salary
FROM employees
GROUP BY department_id;

-- 7. Employees per job
SELECT job_id, COUNT(*) AS emp_count
FROM employees
GROUP BY job_id;

-- 8. Departments with total salary > 50000
SELECT department_id, SUM(salary) AS total_salary
FROM employees
GROUP BY department_id
HAVING SUM(salary) > 50000;

-- 9. Avg commission (not null)
SELECT AVG(commission_pct) AS avg_commission
FROM employees
WHERE commission_pct IS NOT NULL;

-- 10. Count salary > 10000
SELECT COUNT(*) AS high_salary_count
FROM employees
WHERE salary > 10000;

-- 11. Max & Min salary per job
SELECT job_id, MAX(salary) AS max_salary, MIN(salary) AS min_salary
FROM employees
GROUP BY job_id;

-- 12. Total salary per manager
SELECT manager_id, SUM(salary) AS total_salary
FROM employees
GROUP BY manager_id;

-- 13. Salary per department & job
SELECT department_id, job_id, SUM(salary) AS total_salary
FROM employees
GROUP BY department_id, job_id;

-- 14. Jobs with more than 5 employees
SELECT job_id, COUNT(*) AS emp_count
FROM employees
GROUP BY job_id
HAVING COUNT(*) > 5;

-- 15. All aggregates per department
SELECT department_id,
       COUNT(*) AS total_employees,
       AVG(salary) AS avg_salary,
       MAX(salary) AS max_salary,
       MIN(salary) AS min_salary
FROM employees
GROUP BY department_id;

-- 16. Complex HAVING
SELECT department_id
FROM employees
GROUP BY department_id
HAVING AVG(salary) > 8000
   AND COUNT(*) < 10;

-- 17. Department with highest total salary
SELECT department_id, SUM(salary) AS total_salary
FROM employees
GROUP BY department_id
ORDER BY total_salary DESC
FETCH FIRST 1 ROW ONLY;

-- 18. Aliases with aggregates
SELECT department_id,
       SUM(salary) AS Total_Salary,
       AVG(salary) AS Average_Salary
FROM employees
GROUP BY department_id;
