-- 🔍 Problem Title: Finding Updated Records

-- 🧠 Question:
-- We have a table with employees and their salaries, however, some of the records are old and contain outdated salary information.
-- Find the current salary of each employee assuming that salaries increase each year.
-- Output their id, first name, last name, department ID, and current salary.
-- Order your list by employee ID in ascending order.
-- Table: ms_employee_salary

-- 🌐 Platform: StrataScratch
-- 🔰 Difficulty: Easy
-- 📅 Date Solved: 2025-09-10

-- 🧪 Logic:
-- Use ROW_NUMBER() to rank salary records per employee.
-- Select only the top-ranked (latest) salary for each employee.

--- METHOD 1

SELECT id, first_name, last_name, department_id, salary AS current_salary
FROM (
  SELECT id, first_name, last_name, department_id, salary,
         ROW_NUMBER() OVER (PARTITION BY id ORDER BY salary DESC) AS rn
  FROM ms_employee_salary
) AS ranked
WHERE rn = 1
ORDER BY id;




--- METHOD 2 


SELECT 
  id,
  first_name,
  last_name,
  department_id,
  MAX(salary) AS current_salary
FROM 
  ms_employee_salary
GROUP BY 
  id,
  first_name,
  last_name,
  department_id
ORDER BY 
  id ASC;





