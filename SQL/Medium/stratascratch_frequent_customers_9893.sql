-- Problem: Frequent Customers  
-- Source: StrataScratch (ID: 9893)  
-- Date Solved: 17 October 2025  
-- Difficulty: Medium  

-- Question:  
-- Write a query to find all customers (cust_id) who appear in the orders table more than three times.  
-- Return only the cust_id of those customers.  

-- Table:  
-- orders(cust_id, id, order_date, order_details, total_order_cost)  

-- SQL Query:
SELECT 
    cust_id
FROM orders
GROUP BY cust_id
HAVING COUNT(*) > 3;
