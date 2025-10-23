-- Problem: MacBook Pro Events Per Company  
-- Source: StrataScratch (ID: 10140)  
-- Date Solved: 23 October 2025  
-- Difficulty: Medium  

-- Question:  
-- Find how many events happened on MacBook-Pro per company in Argentina  
-- from users that do not speak Spanish.  
-- Output the company id, language of users, and the number of events performed by users.  

-- Tables:  
-- playbook_events(device, event_name, event_type, location, occurred_at, user_id)  
-- playbook_users(activated_at, company_id, created_at, language, state, user_id)  

-- SQL Query:
SELECT 
    u.company_id,
    u.language,
    COUNT(*) AS event_count
FROM playbook_events e
JOIN playbook_users u 
    ON e.user_id = u.user_id
WHERE 
    e.device = 'MacBook-Pro'
    AND e.location = 'Argentina'
    AND u.language != 'Spanish'
GROUP BY 
    u.company_id, 
    u.language;
