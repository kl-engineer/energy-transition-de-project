-- ========================================================================
-- CO2 EMISSION ANALYSIS
-- ========================================================================

-- Full time series: CO2 emissions per capita in Poland and EU
SELECT
country,
year,
co2_per_capita
FROM co2
order by country, year;

-- CO2 emissions per capita: 1990 vs 2024
SELECT 
    country,
    MAX(CASE WHEN year = 1990 THEN co2_per_capita END) AS co2_1990,
    MAX(CASE WHEN year = 2024 THEN co2_per_capita END) AS co2_2024
FROM co2
GROUP BY country;

-- Percentage change in CO2 emissions per capita between 1990 and 2024
SELECT
country,
co2_1990,
co2_2024,
round(((co2_2024 - co2_1990) / co2_1990) * 100,2) as percentage_change
FROM
(
SELECT
country,
max(CASE WHEN YEAR = 1990 THEN co2_per_capita end) as co2_1990,
max(CASE WHEN YEAR = 2024 THEN co2_per_capita end) as co2_2024
FROM co2
group by country
) as emissions;