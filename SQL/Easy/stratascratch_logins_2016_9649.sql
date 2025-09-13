-- Problem: Count the Number of Accounts Used for Logins in 2016
-- Source: StrataScratch (ID: 9649)
-- Date Solved: 13 September 2025
-- Difficulty: Easy

-- Question:
-- Count the number of distinct accounts that performed a login in the year 2016.
-- Each account should be counted only once, even if it logged in multiple times.
-- Output a single value representing the number of unique accounts.

-- Tables:
-- product_logins(account_id, employer_key, login_date)

-- SQL Query:
SELECT 
    COUNT(DISTINCT account_id) AS num_accounts_2016 
FROM 
    product_logins 
WHERE 
    YEAR(login_date) = 2016;
