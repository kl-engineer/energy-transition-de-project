# Energy Transition Data Engineering Project
A Data Engineering project analyzing how energy-related CO₂ emissions and electricity affordability have evolved in Poland (1990–present), compared to the EU average.
The goal is to assess whether the green transition leads to measurable emission reductions and how it affects the cost of electricity for households.

## Project Objectives
- Build a complete ETL pipeline using Python / Databricks.
- Collect and process data from Our World in Data, Eurostat, and World Bank.
- Model and store data in a PostgreSQL warehouse.
- Analyze long-term trends in:
   - CO2 emissions from energy production
   - electricity prices for households
   - wage growth
   - electricity affordability index (kWh purchasable for average wage)
- Create visualizations and insights in Jupyter notebooks.

## Project Structure
(Under development)

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
  
- Our World in Data (OWiD) - CO2 Data
- Eurostat - Electricity Prices
- World Bank - Wages / GDP per capita

## Key Metrics
- Energy-related CO2 emissions (MtCO2)
- Electricity price for household (€/kWh)
- Average wage (PLN / EUR)
- Electricity affordability index (kWh purchasable for average monthly wage)

## ETL Pipeline Overview
1. Extract
   - Download datasets from OWiD / Eurostat / World Bank via direct URLs

2. Transform
   - Clean and standarize columns names
   - Handle missing values
   - Convert units (e.g. €/kWh → PLN/kWh)
   - Compute derived metrics (affordability index)

3. Load
   - Insert processed data into PostgreSQL tables
   - Create indexes for efficient querying
  
## Notebooks
- exploration.ipynb - initial data exploration, visualizations, and insights.

## Status
Project in progress - ETL pipeline under development
