# 📅 Day 5: SQL Subqueries

##  Overview

On Day 5 of my SQL learning journey, I explored **Subqueries (Nested Queries)**.
Subqueries help in solving complex problems by using the result of one query inside another.

This is an important concept for writing efficient and real-world SQL queries.

---

##  Topics Covered

* Subqueries in `WHERE`
* Subqueries in `SELECT`
* Subqueries in `FROM`
* Use of:

  * `IN`
  * `EXISTS`
  * Aggregate functions inside subqueries

---

##  Tables Used

### **employees**

* id
* name
* salary
* department_id

### **departments**

* department_id
* department_name

---

##  Queries Performed

###  View all data

```sql
SELECT * FROM employees;
SELECT * FROM departments;
```

---

###  Employees earning more than average salary

```sql
SELECT name, salary 
FROM employees
WHERE salary > (
    SELECT AVG(salary) 	 	
    FROM employees
);
```

---

###  Employees working in 'HR' department

```sql
SELECT name 
FROM employees
WHERE department_id IN (
    SELECT department_id
    FROM departments
    WHERE department_name = 'HR'
);
```

---

###  Employees who belong to any department (using EXISTS)

```sql
SELECT name
FROM employees e
WHERE EXISTS (
    SELECT 1
    FROM departments d
    WHERE e.department_id = d.department_id
);
```

---

###  Display employee name with overall average salary

```sql
SELECT 
    name,
    salary,
    (SELECT AVG(salary) FROM employees) AS avg_salary
FROM employees;
```

---

###  Average salary per department (Subquery in FROM)

```sql
SELECT department_id, AVG(salary) AS avg_salary
FROM (
    SELECT * FROM employees
) AS temp
GROUP BY department_id;
```

---

###  Find second highest salary

```sql
SELECT MAX(salary)
FROM employees
WHERE salary < (
    SELECT MAX(salary)
    FROM employees
);
```

---

##  Key Learnings

* Understood how to use **nested queries** effectively
* Learned difference between `IN` and `EXISTS`
* Practiced combining **aggregations with subqueries**
* Gained confidence in solving interview-level questions

---

##  Files Attached 

* Day 5 queries
* output

---
##  Next Step

 Day 6: **SQL Window Functions**
