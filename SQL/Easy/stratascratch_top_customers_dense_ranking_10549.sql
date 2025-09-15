-- Problem: Top Customers With Dense Ranking
-- Source: StrataScratch (ID: 10549)
-- Date Solved: 15 September 2025
-- Difficulty: Easy

-- Question:
-- Rank the top five customers by total purchase value.
-- If multiple customers have the same total purchase value, treat them as ties and include all tied customers in the result.
-- Display each customer's ID, total purchase value, and rank.
-- Ensure that the ranking does not skip numbers due to ties (e.g., if two customers share rank 2, the next rank should be 3).

-- Tables:
-- customer_purchase(customer_id, total_purchase_value)

-- SQL Query:
SELECT
    customer_id,
    total_purchase_value,
    rank
FROM (
    SELECT
        customer_id,
        total_purchase_value,
        DENSE_RANK() OVER (ORDER BY total_purchase_value DESC) AS rank
    FROM customer_purchase
) AS ranked_customers
WHERE rank <= 5;
