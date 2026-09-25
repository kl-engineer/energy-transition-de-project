-- ========================================================================
-- WAGES ANALYSIS
-- ========================================================================

-- Full time series: annual net earnings in Poland and EU
SELECT
country,
year,
annual_net_earnings
FROM wages
ORDER BY country, year;

-- Annual net earnings: 2013 vs 2024
SELECT
country,
max(CASE WHEN year = 2013 THEN annual_net_earnings end) as wages_2013,
max(CASE WHEN year = 2024 THEN annual_net_earnings end) as wages_2024
FROM wages
GROUP BY country;

-- Percentage change in annual net earnings between 2013 and 2024
SELECT
country,
wages_2013,
wages_2024,
round(((wages_2024 - wages_2013) / wages_2013) * 100,2) as percentage_change
FROM
(
SELECT
country,
max(CASE WHEN year = 2013 THEN annual_net_earnings end) as wages_2013,
max(CASE WHEN year = 2024 THEN annual_net_earnings end) as wages_2024
FROM wages
GROUP BY country
) as wages;