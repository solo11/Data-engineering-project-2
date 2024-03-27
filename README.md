# Data Engineering project - Earthquake data analysis

Data engineering to analyze Earthquake events - ETL project using DBT, Azure ADF, Snowflake and Tableau

## Source

**USGS.GOV**  - https://earthquake.usgs.gov/fdsnws/event/1
The website provides daily activities of earthquake events recorded


## Azure ADF

Using the Azure data factory copy activity, the data is scheduled to load every day to snowflake
CSV data is extracted using REST API and loaded to the Snowflake warehouse

## Snowflake

Used as a data warehouse to store the raw data and connected to DBT for transformations the updated data is merged into the final table, Tableau uses the final table to update the dashboard.

## DBT

DBT cloud is used for data transformations and data cleaning, countries data is extracted from lat and log values and added after applying the transformations the changes are merged into Snowflake. DBT is also scheduled to run every day.

**Lienage graph**
<img width="1284" alt="Screenshot 2024-03-27 at 5 21 19 PM" src="https://github.com/solo11/Data-engineering-project-2/assets/32461868/e324b0b2-4aad-48fe-9f4f-5dda08b4cb61">



## Tableau

Tableau dashboard with data visualizations and graphs - https://public.tableau.com/app/profile/solomon8607/viz/EarthquakeEvents/Dashboard1

Screenshots:

<img width="1076" alt="Screenshot 2024-03-27 at 6 11 36 PM" src="https://github.com/solo11/Data-engineering-project-2/assets/32461868/0c608c5d-6866-4643-9275-55955334a22a">


