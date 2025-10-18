-- Problem: Number of Speakers By Language  
-- Source: StrataScratch (ID: 10139)  
-- Last Updated: July 2025  
-- Difficulty: Medium  
-- Solved On: 18 October 2025  

-- Question:  
-- Find the number of speakers of each language by country.  
-- Output the country, language, and the corresponding number of speakers.  
-- Sort the result by country in ascending order.

-- Tables:  
-- playbook_users(user_id, language, state, company_id, activated_at, created_at)  
-- playbook_events(user_id, location, event_name, event_type, device, occurred_at)

-- SQL Query:
SELECT
    e.location AS country,
    u.language,
    COUNT(DISTINCT u.user_id) AS number_of_speakers
FROM
    playbook_events e
JOIN
    playbook_users u
    ON e.user_id = u.user_id
GROUP BY
    e.location, u.language
ORDER BY
    e.location ASC;
