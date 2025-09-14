-- Problem: Total Employees in Each Department
-- Source: StrataScratch (ID: 9861)
-- Date Solved: 14 September 2025
-- Difficulty: Easy

-- Question:
-- Find the number of employees in each department.
-- Output the department name along with the corresponding number of employees

-- Tables:
-- worker(department, first_name, last_name, joining_date, salary, worker_id)

-- SQL Query:
SELECT 
    department, 
    COUNT(*) AS num_employees 
FROM 
    worker 
GROUP BY 
    department;
