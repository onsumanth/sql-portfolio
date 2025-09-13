-- Problem: First Three Characters of First Name
-- Source: StrataScratch (ID: 9828)
-- Date Solved: 13 September 2025
-- Difficulty: Easy

-- Question:
-- Print the first three characters of the first name.

-- Tables:
-- worker(worker_id, first_name, last_name, department, joining_date, salary)

-- SQL Query:
SELECT 
    SUBSTRING(first_name, 1, 3) AS first_three_chars 
FROM 
    worker;
