# Day 4: SQL Aggregations (Real Analysis)

##  Overview

Day 4 was all about **analyzing data using SQL aggregation functions**. Instead of just retrieving records, I focused on extracting meaningful insights like totals, averages, and grouped summaries.

This is a crucial step toward real-world data analysis, where raw data is transformed into useful information.

---

##  Key Concepts Covered

* `COUNT()` → Count total records
* `SUM()` → Calculate total values
* `AVG()` → Find average values
* `MIN()` / `MAX()` → Identify extremes
* `GROUP BY` → Categorize data
* `HAVING` → Filter grouped results

---

##  Dataset Used

I continued working with the same dataset from Day 3:

* **employees**
* **departments**

This helped maintain consistency and build deeper understanding.

---

##  Queries & Insights

###  Total Employees

```sql
SELECT COUNT(*) AS total_employees
FROM employees;
```

 Helps understand overall workforce size

---

###  Total Salary Paid

```sql
SELECT SUM(salary) AS total_salary
FROM employees;
```

 Useful for budgeting and financial analysis

---

###  Average Salary

```sql
SELECT AVG(salary) AS avg_salary
FROM employees;
```

 Gives insight into salary distribution

---

###  Highest & Lowest Salary

```sql
SELECT MAX(salary) AS highest_salary,
       MIN(salary) AS lowest_salary
FROM employees;
```

 Identifies salary range

---

##  GROUP BY (Core Concept)

###  Employees per Department

```sql
SELECT department_id, COUNT(*) AS total_employees
FROM employees
GROUP BY department_id;
```

 Shows team size per department

---

###  Average Salary per Department

```sql
SELECT department_id, AVG(salary) AS avg_salary
FROM employees
GROUP BY department_id;
```

 Helps compare departments

---

##  HAVING Clause (Important)

###  Departments with more than 1 employee

```sql
SELECT department_id, COUNT(*) AS total_employees
FROM employees
GROUP BY department_id
HAVING COUNT(*) > 1;
```

 Filters grouped data (not possible with WHERE)

---

###  Departments with Avg Salary > 60000

```sql
SELECT department_id, AVG(salary) AS avg_salary
FROM employees
GROUP BY department_id
HAVING AVG(salary) > 60000;
```

 Identifies high-paying departments

---

##  Real-World Analysis Queries

###  Department-wise Total Salary

```sql
SELECT d.department_name, SUM(e.salary) AS total_salary
FROM departments d
LEFT JOIN employees e
ON d.department_id = e.department_id
GROUP BY d.department_id, d.department_name;
```

 Combines data from multiple tables for business insights

---

###  Top Paying Department

```sql
SELECT d.department_name, SUM(e.salary) AS total_salary
FROM departments d
JOIN employees e
ON d.department_id = e.department_id
GROUP BY d.department_id, d.department_name
ORDER BY total_salary DESC
LIMIT 1;
```

 Identifies the department with highest salary expenditure

---

##  Key Learnings

* Aggregation functions are the backbone of data analysis
* `GROUP BY` is essential for categorizing data
* `HAVING` is used to filter aggregated results
* Joins + aggregations = real-world business insights

---


## Next Step

Day 5:

* Subqueries 

---


