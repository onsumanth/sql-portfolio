-- Problem: Customers Without Orders  
-- Source: StrataScratch (ID: 9896)  
-- Last Updated: September 2025  
-- Difficulty: Medium  
-- Solved On: 17 October 2025  

-- Question:  
-- Find customers who have never made an order.  
-- Output the first name of the customer.  

-- Tables:  
-- customers(id, first_name, last_name, address, city, phone_number)  
-- orders(id, cust_id, order_date, order_details, total_order_cost)  

-- SQL Query:
SELECT c.first_name
FROM customers c
LEFT JOIN orders o ON c.id = o.cust_id
WHERE o.cust_id IS NULL;
