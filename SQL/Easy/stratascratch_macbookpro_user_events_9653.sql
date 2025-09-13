-- Problem: Count the Number of User Events Performed by MacBookPro Users
-- Source: StrataScratch (ID: 9653)
-- Date Solved: 13 September 2025
-- Difficulty: Easy

-- Question:
-- Count the number of user events performed by users on MacBook Pro devices.
-- Output the result along with the event name.
-- Sort the result based on the event count in descending order.

-- Tables:
-- playbook_events(device, event_name, event_type, location, occurred_at, user_id)

-- SQL Query:
SELECT 
    event_name, 
    COUNT(*) AS event_count
FROM 
    playbook_events
WHERE 
    device = 'macbook pro'
GROUP BY 
    event_name
ORDER BY 
    event_count DESC;
