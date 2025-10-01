-- Problem: Premium vs Freemium  
-- Source: StrataScratch (ID: 10300)  
-- Date Solved: 01 October 2025  
-- Difficulty: Medium  

-- Question:  
-- Find the total number of downloads for paying and non-paying users by date.  
-- Include only records where non-paying customers have more downloads than paying customers.  
-- The output should be sorted by earliest date first and contain 3 columns:  
-- date, non-paying downloads, paying downloads.  

-- Tables:  
-- ms_user_dimension(user_id, acc_id)  
-- ms_acc_dimension(acc_id, paying_customer)  
-- ms_download_facts(user_id, date, downloads)  

-- SQL Query:
WITH download_totals AS (
    SELECT 
        c.`date` AS download_date,
        SUM(CASE WHEN b.paying_customer = 'yes' THEN c.downloads ELSE 0 END) AS paying,
        SUM(CASE WHEN b.paying_customer = 'no' THEN c.downloads ELSE 0 END) AS non_paying
    FROM ms_user_dimension a
    INNER JOIN ms_acc_dimension b ON a.acc_id = b.acc_id
    INNER JOIN ms_download_facts c ON a.user_id = c.user_id
    GROUP BY c.`date`
)
SELECT 
    download_date,
    non_paying,
    paying
FROM download_totals
WHERE non_paying > paying
ORDER BY download_date ASC;
