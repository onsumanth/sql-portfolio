-- Problem: Unique Users Per Client Per Month
-- Source: StrataScratch (ID: 2024)
-- Date Solved: 12 September 2025
-- Difficulty: Easy

-- Question:
-- Write a query that returns the number of unique users per client for each month.
-- Assume all events occur within the same year, so only the month (1–12) needs to be in the output.
-- Output the client_id, month, and the number of unique users.
-- Sort the results by client_id and month in ascending order.

-- Table:
-- fact_events(client_id, customer_id, event_id, event_type, id, time_id, user_id)

SELECT 
    client_id,
    MONTH(time_id) AS month,
    COUNT(DISTINCT user_id) AS unique_users
FROM 
    fact_events
GROUP BY 
    client_id,
    MONTH(time_id)
ORDER BY 
    client_id ASC,
    month ASC;
