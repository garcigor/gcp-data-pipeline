# Batch End-to-End Data Pipeline on GCP (CSV → BigQuery)

## Objective
Build a simple batch data pipeline on Google Cloud Platform using CSV files stored in Cloud Storage and modeled in BigQuery for analytical queries.

## Architecture
CSV (Cloud Storage) → BigQuery Raw → BigQuery Analytics → Analytical Views

## BigQuery Structure
- **callcenter_raw.calls_stg**: staging table loaded from CSV
- **callcenter_analytics.calls**: analytics table partitioned by date
- **Views**
  - **vw_callcenter_analytics_volume**
  - **vw_callcenter_analytics_time_state**
  - **vw_callcenter_analytics_sla**

## Key Metrics
- Daily call volume
- Average handle time and percentiles (P50, P90)
- SLA compliance rate (≤ 5 minutes)

## Tech Stack
- Google Cloud Storage
- BigQuery
- SQL
- Python

## Notes
Data files are not versioned in this repository. The CSV source is stored in Cloud Storage.
