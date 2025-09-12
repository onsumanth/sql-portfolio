-- Problem: Active Users Per Platform
-- Source: StrataScratch (ID: 2072)
-- Date Solved: 12 September 2025
-- Difficulty: Easy

-- Question:
-- For each platform (e.g., Windows, iPhone, iPad etc.), calculate the number of users.
-- Count the number of distinct users per platform, regardless of whether they used other platforms.
-- Output the name of the platform with the corresponding number of users.

-- Tables:
-- user_sessions(platform, session_endtime, session_id, session_starttime, user_id)

-- SQL Query:
SELECT 
    platform, 
    COUNT(DISTINCT user_id) AS users 
FROM 
    user_sessions 
GROUP BY 
    platform;
