 SELECT *FROM employees;
SELECT * FROM departments;

                                                -- employees earning more than average salary
SELECT name, salary 
FROM employees
WHERE salary > (
				SELECT AVG(salary) 	 	
                FROM employees
);
                                                  -- Employees working in 'HR' department 
SELECT name 
FROM employees
WHERE department_id IN (
	 SELECT department_id
     FROM departments
     WHERE department_name = 'HR'
);


                                                  -- Employees who belong to any department
SELECT name
FROM employees e
WHERE EXISTS (
    SELECT 1
    FROM departments d
    WHERE e.department_id = d.department_id
);

                                                       -- Show employee name + average salary
SELECT 
    name,
    salary,
    (SELECT AVG(salary) FROM employees) AS avg_salary
FROM employees;


                                                        -- Average salary per department
SELECT department_id, AVG(salary) AS avg_salary
FROM (
    SELECT * FROM employees
) AS temp
GROUP BY department_id;


                                                         -- Find 2nd highest salary
SELECT MAX(salary)
FROM employees
WHERE salary < (
    SELECT MAX(salary)
    FROM employees
);