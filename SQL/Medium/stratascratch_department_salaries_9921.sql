-- Problem: Department Salaries  
-- Source: StrataScratch (ID: 9921)  
-- Last Updated: October 2025  
-- Difficulty: Medium  
-- Solved On: 18 October 2025  

-- Question:  
-- Find the number of male and female employees per department and also their corresponding total salaries.  
-- Output department names along with the corresponding number of female employees, the total salary of female employees, the number of male employees, and the total salary of male employees.  

-- Tables:  
-- employee(id, first_name, last_name, age, sex, salary, department, address, city, email, employee_title, manager_id, bonus, target)  

-- SQL Query:
SELECT 
    department,
    SUM(CASE WHEN sex = 'female' THEN 1 ELSE 0 END) AS female_count,
    SUM(CASE WHEN sex = 'female' THEN salary ELSE 0 END) AS female_salary,
    SUM(CASE WHEN sex = 'male' THEN 1 ELSE 0 END) AS male_count,
    SUM(CASE WHEN sex = 'male' THEN salary ELSE 0 END) AS male_salary
FROM employee
GROUP BY department;
