CREATE TABLE departments (
	department_id INT PRIMARY KEY,
	department_name VARCHAR(100)
);

INSERT INTO departments VALUE 
(101, 'HR'),
(102, 'IT'),
(103, 'Finance'),
(104, 'Marketing');

SELECT * FROM departments;
