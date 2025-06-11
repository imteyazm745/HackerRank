-- Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA.
SELECT * 
FROM CITY 
WHERE POPULATION > 100000 AND COUNTRYCODE = 'USA';

-- Query the greatest value of the Northern Latitudes (LAT_N) from STATION that is less than 137.2345. Truncate your answer to 4 decimal places.
SELECT TRUNCATE(MAX(LAT_N), 4)
FROM STATION
WHERE LAT_N < 137.2345;

-- Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than . Round your answer to  decimal places.
SELECT ROUND(Long_W, 4)
FROM STATION 
WHERE LAT_N = (
    SELECT MAX(LAT_N)
    FROM STATION
    WHERE LAT_N < 137.2345
    );

-- Query the smallest Northern Latitude (LAT_N) from STATION that is greater than 38.7780. Round your answer to 4 decimal places.
SELECT ROUND(LAT_N, 4)
FROM STATION
WHERE LAT_N = (
    SELECT MIN(LAT_N) 
    FROM STATION 
    WHERE LAT_N > 38.7780
);

-- Query the Western Longitude (LONG_W)where the smallest Northern Latitude (LAT_N) in STATION is greater than 38.7780. Round your answer to 4 decimal places.
SELECT ROUND(LONG_W, 4)
FROM STATION
WHERE LAT_N = (
    SELECT MIN(LAT_N)
    FROM STATION
    WHERE LAT_N > 38.7780
);


-- You are given a table, BST, containing two columns: N and P, where N represents the value of a node in Binary Tree, and P is the parent of N.
-- Write a query to find the node type of Binary Tree ordered by the value of the node. Output one of the following for each node:
SELECT 
    N,
    CASE
        WHEN P IS NULL THEN 'Root'
        WHEN N NOT IN (SELECT DISTINCT P FROM BST WHERE P IS NOT NULL) THEN 'Leaf'
        ELSE 'Inner'
    END AS NodeType
FROM BST
ORDER BY N;



/*
-- Consider P1(a,b) and P2(c,d) and  to be two points on a 2D plane.
a happens to equal the minimum value in Northern Latitude (LAT_N in STATION).
b happens to equal the minimum value in Western Longitude (LONG_W in STATION).
c happens to equal the maximum value in Northern Latitude (LAT_N in STATION).
d happens to equal the maximum value in Western Longitude (LONG_W in STATION).

Query the Manhattan Distance between points  and  and round it to a scale of 4  decimal places.
*/

SELECT ROUND(
    ABS((MIN(LAT_N) - MAX(LAT_N)) + (MIN(LONG_w) - MAX(LONG_w))), 4
)
FROM STATION;



"""
Consider P1(a, c) and P2(b, d) to be two points on a 2D plane where (a,b) are the respective minimum and maximum values of Northern Latitude (LAT_N) and (c,d) are the respective minimum and maximum values of Western Longitude (LONG_W) in STATION.
Query the Euclidean Distance between points P1 and P2 and format your answer to display 4 decimal digits.

Input Format
The STATION table is described as follows:

LINK: https://www.hackerrank.com/challenges/weather-observation-station-19/problem?isFullScreen=true
"""
SELECT ROUND(
  SQRT(
    POWER(MAX(LAT_N) - MIN(LAT_N), 2) + 
    POWER(MAX(lONG_W) - MIN(long_w), 2)
  ),
  4
)
FROM STATION


"""
Given a company hierarchy with the following tables:

Company(company_code, founder)
Lead_Manager(lead_manager_code, company_code)
Senior_Manager(senior_manager_code, lead_manager_code, company_code)
Manager(manager_code, senior_manager_code, lead_manager_code, company_code)
Employee(employee_code, manager_code, senior_manager_code, lead_manager_code, company_code)

Write a query to return for each company:
company_code
founder
total number of distinct lead managers, senior managers, managers, and employees
"""
SELECT
    c.company_code,
    c.founder,
    COUNT(DISTINCT lm.lead_manager_code) AS total_lead_managers,
    COUNT(DISTINCT sm.senior_manager_code) AS total_senior_managers,
    COUNT(DISTINCT m.manager_code) AS total_managers,
    COUNT(DISTINCT e.employee_code) AS total_employees
FROM company c
LEFT JOIN lead_manager lm ON c.company_code = lm.company_code
LEFT JOIN senior_manager sm ON c.company_code = sm.company_code
LEFT JOIN manager m ON c.company_code = m.company_code
LEFT JOIN employee e ON c.company_code = e.company_code
GROUP BY c.company_code, c.founder
ORDER BY c.company_code;

-- A median is defined as a number separating the higher half of a data set from the lower half. Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to 4 decimal places.
WITH ordered AS (
    SELECT LAT_N,
           ROW_NUMBER() OVER (ORDER BY LAT_N) AS rn,
           COUNT(*) OVER () AS total_rows
    FROM STATION
)
SELECT ROUND(AVG(LAT_N), 4) AS median
FROM ordered
WHERE rn IN (
    (total_rows + 1) / 2,
    (total_rows + 2) / 2
);

