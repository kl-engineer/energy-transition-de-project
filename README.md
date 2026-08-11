# Energy Transition Data Engineering Project
The project analyses long-term CO₂ emission trends from 1990 onwards and investigates the relationship between emissions and electricity affordability for the period where comparable electricity price data is available (2007–present), compared to the EU average. The goal is to assess whether the green transition leads to measurable emission reductions and how it affects the cost of electricity for households.

## Project Objectives
- Build a complete ETL pipeline using Python / Databricks.
- Collect and process data from Our World in Data and Eurostat.
- Model and store data in a PostgreSQL warehouse.
- Analyze long-term trends in:
   - CO2 emissions from energy production
   - electricity prices for households
   - wage growth
   - electricity affordability index (kWh purchasable for average wage)
- Create visualizations and insights in Jupyter notebooks.

## Data Availability and Assumptions
* CO₂ emissions data is available for the period 1990–present.
* Comparable electricity price data from Eurostat is available from 2007 onwards.
* The selected electricity price series uses:
  * Geography: Poland (PL) and European Union (EU27_2020)
  * Consumption band: KWH2500-4999
  * Taxation: Including all taxes and levies (I_TAX)
  * Currency: Euro (EUR)
* The selected series contains a single missing value for Poland in 2007-S1. Annual prices will be calculated from the
  available semi-annual observations.
* Therefore, the integrated analysis of emissions and electricity affordability will cover the period 2007–present.

## Project Structure

```text
Energy-Transition-Data-Engineering-Project/
│
├── data/
│   ├── raw/
│   │   ├── owid_co2_data.csv
│   │   └── eurostat_energy_prices.csv
│   └── processed/
│       ├── co2_poland_eu.csv
│       └── electricity_prices_poland_eu.csv
│
├── notebooks/
│   ├── 01_co2_exploration.ipynb
│   ├── 02_electricity_prices_exploration.ipynb
│   └── 03_data_integration.ipynb
│   └── 04_wages.ipynb
│
├── src/
├── sql/
└── README.md
```

## Tech Stack
- Python (Pandas, PySpark)
- Databricks
- PostgreSQL
- SQL
- Git / GitHub
- Jupyter Notebooks

## Data Sources
- **Global Carbon Budget (2025)** - with major processing by *Our World in Data*.  
Dataset: Annual CO2 emissions (fossil CO2)  
Source: Global Carbon Project, "Global Carbon Budget v15".  
License: CC BY 4.0  
Link: https://ourworldindata.org/co2-and-greenhouse-gas-emissions

- **Electricity prices for household consumers**  
Dataset: Electricity prices for household consumers (nrg_pc_204)  
Source: Eurostat (accessed through Eurostat API via the eurostat Python package)  
License: Eurostat reuse policy  
Link: https://ec.europa.eu/eurostat/databrowser/view/nrg_pc_204/default/table?lang=en

- **Annual net earnings**   
Dataset: Annual net earnings (earn_nt_net)   
Source: Eurostat (accessed through Eurostat API via the eurostat Python package)   
License: Eurostat reuse policy   
Link: https://ec.europa.eu/eurostat/databrowser/view/earn_nt_net/default/table?lang=en

## Key Metrics
- Energy-related CO2 emissions (MtCO2)
- Electricity price for household (€/kWh)
- Average wage (PLN / EUR)
- Electricity affordability index (kWh purchasable for average monthly wage)

## ETL Pipeline Overview
1. Extract
   - Download datasets from OWiD via direct URL
   - Retrieve Eurostat datasets programmatically through the Eurostat API

2. Transform
   - Clean and standarize columns names
   - Handle missing values
   - Convert units (e.g. €/kWh → PLN/kWh)
   - Compute derived metrics (affordability index)

3. Load
   - Insert processed data into PostgreSQL tables
   - Create indexes for efficient querying
  
## Notebooks
- 01_co2_exploration.ipynb - CO₂ data exploration and filtering.
- 02_electricity_prices_exploration.ipynb - Electricity prices data exploration and filtering.
- 03_data_integration.ipynb - Integration of datasets and preparation of the analytical dataset.
- 04_wages.ipynb - wages data exploration and filtering.

## Status
Project in progress - ETL pipeline under development
