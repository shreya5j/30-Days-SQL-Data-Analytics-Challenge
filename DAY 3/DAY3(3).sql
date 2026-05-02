SELECT e.name, d.department_name
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id;

SELECT e.name, d.department_name
FROM employees e
LEFT JOIN departments d
ON e.department_id = d.department_id;

SELECT e.name, d.department_name
FROM employees e
RIGHT JOIN departments d
ON e.department_id = d.department_id;

-- Employees without department
SELECT name FROM employees WHERE department_id IS NULL;


-- Count employees per department 
SELECT d.department_name, COUNT(e.emp_id) AS total_employees
FROM departments d
LEFT JOIN employees e
ON d.department_id = e.department_id
GROUP BY d.department_id, d.department_name;


-- Total salary per department
SELECT d.department_name, SUM(e.salary) AS total_salary
FROM departments d
LEFT JOIN employees e
ON d.department_id = e.department_id
GROUP BY d.department_id, d.department_name;


-- Average salary
SELECT d.department_name, 
COALESCE(AVG(e.salary), 0) AS avg_salary
FROM departments d
LEFT JOIN employees e
ON d.department_id = e.department_id
GROUP BY d.department_id, d.department_name;


-- Highest paid employee per department
SELECT d.department_name, e.name, e.salary
FROM employees e
JOIN departments d
ON e.department_id = d.department_id
WHERE (e.department_id, e.salary) IN (
    SELECT department_id, MAX(salary)
    FROM employees
    GROUP BY department_id
);


