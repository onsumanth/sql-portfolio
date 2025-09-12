-- Problem: Primary Key Violation
-- Source: StrataScratch (ID: 2107)
-- Date Solved: 12 September 2025
-- Difficulty: Easy

-- Question:
-- Write a query to return all customers (`cust_id`) who are violating primary key constraints 
-- in the Customer Dimension (`dim_customer`), i.e., those customers who are present more than once.
-- For example, if `cust_id` 'C123' is present thrice, the query should return two columns:
-- 'C123' and 3.

-- Tables:
-- dim_customer(cust_id, cust_name, cust_dob, cust_city, cust_pin_code)

-- SQL Query:
SELECT 
    cust_id, 
    COUNT(*) AS occurrence_count 
FROM 
    dim_customer 
GROUP BY 
    cust_id 
HAVING 
    COUNT(*) > 1;
