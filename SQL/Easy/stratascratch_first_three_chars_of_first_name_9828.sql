-- Problem: First Three Characters of First Name
-- Source: StrataScratch (ID: 9828)
-- Date Solved: 13 September 2025
-- Difficulty: Easy

-- Question:
-- Print the first three characters of the first name.

-- Tables:
-- worker(worker_id, first_name, last_name, department, joining_date, salary)

-- SQL Query:
SELECT 
    SUBSTRING(first_name, 1, 3) AS first_three_chars 
FROM 
    worker;



Yes, both approaches are correct for MySQL, with one typo in the first query:
You wrote subtring → it should be substring.
SELECT SUBSTRING(first_name, 1, 3) AS first_three_characters
FROM worker;

And:
SELECT LEFT(first_name, 3) AS first_three_characters
FROM worker;

Difference
- SUBSTRING(first_name, 1, 3) → start at position 1 and take 3 characters.
- LEFT(first_name, 3) → simply take the first 3 characters.
For this particular problem, both are equally appropriate.


give me syntax for subtring

SUBSTRING() syntax in MySQL
SUBSTRING(string, start_position, length)

Example:
SUBSTRING(first_name, 1, 3)

Meaning:
string → where to start → how many characters
SUBSTRING("Sumanth", 1, 3) → Sum
