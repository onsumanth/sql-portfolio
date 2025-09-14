-- Problem: First Name Contains 'a'
-- Source: StrataScratch (ID: 9840)
-- Date Solved: 14 September 2025
-- Difficulty: Easy

-- Question:
-- Find all workers whose first name contains the letter 'a'.
-- Output all columns from the 'worker' table.

-- Tables:
-- worker(id, first_name, last_name, salary, joining_date, department)

SELECT *
FROM worker
WHERE first_name LIKE '%a%';
