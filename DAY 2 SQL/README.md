# Day 2 - SQL Filtering & Sorting

## Project Overview

This is Day 2 of my 30-day SQL learning challenge.
In this project, I worked with a `users` dataset to practice filtering and sorting data using different SQL clauses.

---

## Work Done

* Created a `users` table with relevant fields
* Inserted 25 sample records
* Executed multiple queries to filter, sort, and analyze the data

---

## Concepts Covered

* WHERE clause - Used to filter specific records.
* AND & OR conditions - Applied multiple conditions to refine results.
* ORDER BY - Used to sort data.
* LIMIT - Restricted number of output rows.
* BETWEEN - Filtered records within a range.
* LIKE - Pattern-based filtering.

---

## Sample Queries

Filter users with salary greater than 60000:

```sql
SELECT * FROM users WHERE salary > 60000;
```

Apply multiple conditions:

```sql
SELECT * FROM users 
WHERE gender = 'Female' AND salary > 60000;
```

Sort records in descending order:

```sql
SELECT * FROM users 
ORDER BY id DESC;
```

Retrieve top 3 records:

```sql
SELECT * FROM users 
ORDER BY id DESC 
LIMIT 3;
```

Filter within a salary range:

```sql
SELECT * FROM users 
WHERE salary BETWEEN 50000 AND 70000;
```

Pattern matching:

```sql
SELECT * FROM users 
WHERE name LIKE 'A%';
```

---

## Learning Outcome

Through this project, I gained a better understanding of how to filter data using different conditions and how to sort and limit results effectively. This is essential for extracting meaningful insights from a dataset.

---

## Project Files

* `day2.sql`
* `outputt.png`

---

## Next Step

Day 3: Working with SQL JOINS to combine data from multiple tables.

