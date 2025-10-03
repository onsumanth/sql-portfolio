-- Problem: Users Exclusive Per Client  
-- Source: StrataScratch (ID: 2025)  
-- Date Solved: 03 October 2025  
-- Difficulty: Medium  

-- Question:  
-- Considering a dataset that tracks user interactions with different clients,  
-- identify which clients have users who are exclusively loyal to them  
-- (i.e., they don't interact with any other clients).  
-- For each of these clients, calculate the number of such exclusive users.  
-- The output should include the client_id and the corresponding count of exclusive users.  

-- Table:  
-- fact_events(user_id, client_id, event_id, event_type, time_id, id, customer_id)  

-- SQL Query:
SELECT 
    client_id,
    COUNT(DISTINCT user_id) AS exclusive_user_count
FROM fact_events
WHERE user_id IN (
    SELECT user_id
    FROM fact_events
    GROUP BY user_id
    HAVING COUNT(DISTINCT client_id) = 1
)
GROUP BY client_id;
