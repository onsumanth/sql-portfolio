-- Problem: Number Of Records By Variety
-- Source: StrataScratch (ID: 10168)
-- Date Solved: 14 September 2025
-- Difficulty: Easy

-- Question:
-- Find the total number of records that belong to each variety in the
--dataset. Output the variety along 
-- with the corresponding number of records. Order records by the variety in ascending order.

-- Tables:
-- iris(sepal_length, sepal_width, petal_length, petal_width, variety)

-- SQL Query:
SELECT 
    variety, 
    COUNT(*) AS record_count 
FROM 
    iris 
GROUP BY 
    variety 
ORDER BY 
    variety ASC;
