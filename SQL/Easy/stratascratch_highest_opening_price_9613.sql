-- Problem: Filter Rows by Maximum Value
-- Source: StrataScratch (ID: 9613)
-- Date Solved: 13 September 2025
-- Difficulty: Easy

-- Question:
-- Find the date when Apple's opening stock price reached its maximum.
-- Return only the date(s) where the opening price was the highest in the dataset.

-- Tables:
-- aapl_historical_stock_price(date, open, close, high, low, volume, id, year, month)

-- SQL Query:
SELECT 
    date 
FROM 
    aapl_historical_stock_price 
WHERE 
    open = (
        SELECT MAX(open) 
        FROM aapl_historical_stock_price
    );



--- OTHER METHOD 
select date 
from aapl_historical_stock_price
order by open desc
limit 1;
