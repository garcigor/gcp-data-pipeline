\# Batch End-to-End Data Pipeline on GCP



\## Objective

Build a simple batch data pipeline on Google Cloud Platform using CSV files,

Cloud Storage and BigQuery for analytical queries.



\## Architecture

CSV files are uploaded to Google Cloud Storage, loaded into BigQuery raw tables,

transformed into an analytics layer and exposed through analytical views.



\## Data Structure

\- callcenter\_raw.calls\_stg: staging table loaded from CSV

\- callcenter\_analytics.calls: analytics table partitioned by date

\- Analytical views:

&nbsp; - vw\_callcenter\_analytics\_volume

&nbsp; - vw\_callcenter\_analytics\_time\_state

&nbsp; - vw\_callcenter\_analytics\_sla



\## Key Metrics

\- Daily call volume

\- Average handle time and percentiles (P50, P90)

\- SLA compliance rate (≤ 5 minutes)



\## Tech Stack

\- Google Cloud Storage

\- BigQuery

\- SQL

\- Python



