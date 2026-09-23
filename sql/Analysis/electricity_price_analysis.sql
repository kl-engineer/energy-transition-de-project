-- ========================================================================
-- ELECTRICITY PRICE ANALYSIS
-- ========================================================================

-- Full time series: Electricity price per household in Poland and EU
SELECT 
country,
year,
electricity_price
FROM 
electricity_price
ORDER BY
country, year;

-- Electricity price: 2007 vs 2024
SELECT
country,
max(CASE WHEN year = 2007 THEN electricity_price END) as electricity_price_2007,
max(CASE WHEN year = 2024 THEN electricity_price END) as electricity_price_2024
FROM
electricity_price
GROUP BY
country;

-- Percentage change in electricity price between 2007 and 2024
SELECT
country,
electricity_price_2007,
electricity_price_2024,
round(((electricity_price_2024 - electricity_price_2007) / electricity_price_2007) * 100,2) as percentage_change
FROM
(
SELECT
country,
max(CASE WHEN year = 2007 THEN electricity_price END) as electricity_price_2007,
max(CASE WHEN year = 2024 THEN electricity_price END) as electricity_price_2024
FROM
electricity_price
GROUP BY
country
) as electricity_prices;