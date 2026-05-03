SELECT COUNT(*) AS total_employees              
FROM employees;

SELECT SUM(salary) AS total_salary
FROM employees;

SELECT AVG(salary) AS avg_salary
FROM employees;

SELECT MAX(salary) AS highest_salary,
       MIN(salary) AS lowest_salary
	FROM employees;

SELECT department_id, COUNT(*) AS total_employees
FROM employees
GROUP BY department_id; 

SELECT department_id, AVG(salary) AS avg_salary
FROM employees
GROUP BY department_id;	

                                                    -- department with more than 1 employee
SELECT department_id, COUNT(*) AS total_employees
FROM employees
GROUP BY department_id
HAVING COUNT(*) > 1 ; 

                                                  -- Departments with avg salary > 60000
SELECT department_id, AVG(salary) AS avg_salary
FROM employees
GROUP BY department_id
HAVING AVG(salary) > 60000; 


                                                       -- Department-wise total salary (with names)
SELECT d.department_name, SUM(e.salary) AS total_salary
FROM departments d
LEFT JOIN employees e
ON d.department_id = e.department_id
GROUP BY d.department_id, d.department_name;

                                                          -- Top paying department
SELECT d.department_name, SUM(e.salary) AS total_salary
FROM departments d
JOIN employees e
ON d.department_id = e.department_id
GROUP BY d.department_id, d.department_name
ORDER BY total_salary DESC
LIMIT 1;

