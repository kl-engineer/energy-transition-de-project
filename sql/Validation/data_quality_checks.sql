-- ==========================================
-- CO2 EMISSIONS
-- ==========================================

SELECT * FROM co2
WHERE country is null 
	OR year is null 
	OR co2 is null
	OR co2_per_capita is null;

SELECT DISTINCT country
FROM co2;

SELECT 
	country,
	min(year),
	max(year),
	count(*)
FROM co2
GROUP BY country;

-- ==========================================
-- ELECTRICITY_PRICE
-- ==========================================

SELECT * FROM electricity_price
WHERE country is null 
	OR year is null 
	OR electricity_price is null;

SELECT DISTINCT country
FROM electricity_price;

SELECT 
	country,
	min(year),
	max(year),
	count(*)
FROM electricity_price
GROUP BY country;

-- ==========================================
-- POPULATION
-- ==========================================

SELECT * FROM population
WHERE country is null 
	OR year is null 
	OR population is null;

SELECT DISTINCT country
FROM population;

SELECT 
	country,
	min(year),
	max(year),
	count(*)
FROM population
GROUP BY country;

-- ==========================================
-- WAGES
-- ==========================================

SELECT * FROM wages
WHERE country is null 
	OR year is null 
	OR annual_net_earnings is null;

SELECT DISTINCT country
FROM wages;

SELECT 
	country,
	min(year),
	max(year),
	count(*)
FROM wages
GROUP BY country;