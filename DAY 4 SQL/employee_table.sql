CREATE TABLE employees (
emp_id INT PRIMARY KEY,
name VARCHAR(100),
department_id INT,
salary DECIMAL(10,2)
);

INSERT INTO employees VALUES
(1, 'Aarav', 101, 60000),
(2, 'Ananya', 102, 75000),
(3, 'Raj', 101, 50000),
(4, 'Sneha', 103, 65000),
(5, 'Karan', NULL, 70000);

SELECT * FROM employees;