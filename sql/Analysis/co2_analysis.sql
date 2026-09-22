-- ========================================================================
-- How emission of CO2 per capita changed in Poland and EU since 1990?
-- ========================================================================

SELECT
country,
year,
co2_per_capita
FROM co2
order by country, year;

SELECT 
country,
max(CASE WHEN YEAR = 1990 THEN co2_per_capita end) as co2_1990,
max(CASE WHEN YEAR = 2024 THEN co2_per_capita end) as co2_2024
from co2
group by country



