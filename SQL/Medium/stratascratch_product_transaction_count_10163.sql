-- Problem: Product Transaction Count  
-- Source: StrataScratch (ID: 10163)  
-- Date Solved: 25 October 2025  
-- Difficulty: Medium  

-- Question:  
-- Find the number of transactions that occurred for each product.  
-- Output the product name along with the corresponding number of transactions.  
-- Order records by the product id in ascending order.  
-- You can ignore products without transactions.  

-- Tables:  
-- excel_sql_inventory_data(product_id, product_name, price_unit, product_type, unit, wholesale)  
-- excel_sql_transaction_data(product_id, transaction_id, time)  

-- SQL Query:
SELECT 
    i.product_name, 
    t.transaction_count
FROM (
    SELECT 
        product_id, 
        COUNT(*) AS transaction_count
    FROM excel_sql_transaction_data
    GROUP BY product_id
) t
JOIN excel_sql_inventory_data i
ON t.product_id = i.product_id
ORDER BY i.product_id;
