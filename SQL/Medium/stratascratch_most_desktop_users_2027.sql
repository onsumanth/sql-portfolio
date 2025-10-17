-- Problem: Company With Most Desktop Users  
-- Source: StrataScratch (ID: 2027)  
-- Date Solved: 17 October 2025  
-- Difficulty: Medium  

-- Question:  
-- Write a query that returns the company (customer_id column) with the highest number of users who have only used desktop.  
-- Users who may have used mobile at any point are ignored, but companies may still have mobile users.  
-- Return the customer_id of the company with the most desktop-only users.  

-- Table:  
-- fact_events(client_id, customer_id, event_id, event_type, id, time_id, user_id)  

-- SQL Query:
WITH desktop_only_users AS (
    SELECT 
        user_id
    FROM fact_events
    GROUP BY user_id
    HAVING COUNT(DISTINCT event_type) = 1
       AND MAX(event_type) = 'desktop'
)
SELECT 
    customer_id
FROM fact_events
WHERE user_id IN (SELECT user_id FROM desktop_only_users)
GROUP BY customer_id
ORDER BY COUNT(DISTINCT user_id) DESC
LIMIT 1;
