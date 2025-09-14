-- Problem: April Admin Employees
-- Source: StrataScratch (ID: 9845)
-- Date Solved: 14 September 2025
-- Difficulty: Easy

-- Question:
-- Find the number of employees working in the Admin department 
-- that joined in April or later, in any year.

-- Tables:
-- worker(worker_id, first_name, last_name, salary, joining_date, department)

SELECT COUNT(*) AS admin_employee_count
FROM worker
WHERE department = 'Admin'
  AND EXTRACT(MONTH FROM joining_date) >= 4;
