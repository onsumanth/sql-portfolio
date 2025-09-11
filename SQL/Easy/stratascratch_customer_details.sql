-- Problem: Customer Details
-- Source: StrataScratch (ID: 9891)
-- Date Solved: 11 September 2025
-- Difficulty: Easy

-- Question:
-- Find the details of each customer regardless of whether the customer made an order.
-- Output the customer's first name, last name, and the city along with the order details.
-- Sort records based on the customer's first name and the order details in ascending order.

-- Tables:
-- customers(id, first_name, last_name, city, address, phone_number)
-- orders(id, cust_id, order_date, order_details, total_order_cost)

SELECT 
    c.first_name,
    c.last_name,
    c.city,
    o.order_details
FROM customers c
LEFT JOIN orders o
    ON c.id = o.cust_id
ORDER BY 
    c.first_name ASC,
    o.order_details ASC;
