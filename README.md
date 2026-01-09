
# End-to-End Data Pipeline on GCP

## Problem
The goal of this project is to build a simple end-to-end data pipeline on Google Cloud Platform.
The pipeline ingests raw CSV data, stores it in Cloud Storage, processes it, and loads it into BigQuery
for analytical queries.

## Architecture
1. Raw data is uploaded to Google Cloud Storage.
2. Data is ingested into BigQuery.
3. Data is transformed and queried using SQL.
4. The final dataset is used for analytical purposes.

## Tech Stack
- Google Cloud Storage
- BigQuery
- Python
- SQL
