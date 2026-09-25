-- ========================================================================
-- AFFORDABILITY ANALYSIS
-- ========================================================================

-- Joining wages data with electricity_price data
SELECT
a.country,
a.year,
a.annual_net_earnings,
b.electricity_price
FROM 
wages a
INNER JOIN
electricity_price b
ON 
a.country = b.country
AND
a.year = b.year
ORDER BY
country, year;

-- Creating a new column with affordability index
SELECT
a.country,
a.year,
a.annual_net_earnings,
b.electricity_price,
(a.annual_net_earnings / b.electricity_price) as affordability_index
FROM 
wages a
INNER JOIN
electricity_price b
ON 
a.country = b.country
AND
a.year = b.year
ORDER BY
country, year;

-- Affordability index: 2013 vs 2024
SELECT
country,
MAX(CASE WHEN year = 2013 THEN affordability_index end) as affordability_index_2013,
MAX(CASE WHEN year = 2024 THEN affordability_index end) as affordability_index_2024
FROM
(
SELECT
a.country,
a.annual_net_earnings,
a.year,
b.electricity_price,
(a.annual_net_earnings / b.electricity_price) as affordability_index
FROM 
wages a
INNER JOIN
electricity_price b
ON 
a.country = b.country
AND
a.year = b.year
ORDER BY
country, year
) 
as affordability_index_change
GROUP BY country

