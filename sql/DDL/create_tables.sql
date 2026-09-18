-- ==========================================
-- CO2 EMISSIONS
-- ==========================================

CREATE TABLE IF NOT EXISTS public.co2
(
    country text NOT NULL,
    year integer NOT NULL,
    co2 numeric NOT NULL,
    co2_per_capita numeric NOT NULL,
    PRIMARY KEY (country, year)
);

-- ==========================================
-- ELECTRICITY PRICE
-- ==========================================

CREATE TABLE IF NOT EXISTS public.electricity_price
(
    country text NOT NULL,
    year integer NOT NULL,
    electricity_price numeric NOT NULL,
    PRIMARY KEY (country, year)
);

-- ==========================================
-- POPULATION
-- ==========================================

CREATE TABLE IF NOT EXISTS public.population
(
    country text NOT NULL,
    year integer NOT NULL,
    population integer NOT NULL,
    PRIMARY KEY (country, year)
);

-- ==========================================
-- WAGES
-- ==========================================

CREATE TABLE IF NOT EXISTS public.wages
(
    country TEXT NOT NULL,
    year INTEGER NOT NULL,
    annual_net_earnings NUMERIC NOT NULL,
    PRIMARY KEY (country, year)
);
