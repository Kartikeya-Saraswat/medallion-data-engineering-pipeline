# End-to-End Data Engineering Pipeline with Databricks, PySpark & dbt

## Project Overview

This project demonstrates an end-to-end modern data engineering pipeline built using the Medallion Architecture. It ingests raw ride-sharing datasets, transforms them through Bronze, Silver, and Gold layers, and produces business-ready analytical datasets.

The project showcases industry-standard data engineering practices including Delta Lake, Structured Streaming, dbt transformations, Slowly Changing Dimensions (SCD Type 2), data quality testing, and analytical SQL.

---

## Architecture

```
                CSV Files
                     │
                     ▼
        Bronze Layer (Streaming Ingestion)
                     │
                     ▼
        Silver Layer (PySpark Transformations)
                     │
                     ▼
          Gold Layer (dbt Models)
                     │
                     ▼
      Business Analytics (SQL Notebook)
```

---

## Tech Stack

- Databricks
- Apache Spark (PySpark)
- Delta Lake
- dbt Core
- SQL
- Git & GitHub

---

## Project Structure

```
project/
│
├── notebooks/
│   ├── bronze_ingestion
│   ├── silver_transformation
│   └── gold_analysis
│
├── models/
│   ├── silver/
│   ├── gold/
│   └── sources.yml
│
├── snapshots/
│
├── macros/
│
├── README.md
│
└── dbt_project.yml
```

---

# Medallion Architecture

## Bronze Layer

The Bronze layer ingests raw CSV data into Delta tables using Structured Streaming.

Features:

- Incremental ingestion
- Checkpointing
- Schema enforcement
- Delta tables

Tables:

- Customers
- Drivers
- Trips
- Payments
- Vehicles
- Locations

---

## Silver Layer

The Silver layer cleans and standardizes the raw data using PySpark.

Transformations include:

- Data cleaning
- Duplicate removal
- Phone number formatting
- Name standardization
- Email domain extraction
- Data type conversions
- Incremental MERGE operations

---

## Gold Layer

The Gold layer contains reusable business models created using dbt.

Dimension Tables

- dimCustomers
- dimDrivers
- dimVehicles
- dimPayments
- dimLocations

Fact Table

- factTrips

Business Summary Models

- customer_summary
- driver_summary
- payment_summary
- vehicle_summary
- monthly_revenue

---

# Data Quality

The project includes dbt tests to ensure data quality.

Implemented tests include:

- Unique keys
- Not Null checks
- Relationship tests
- Source validation

---

# Slowly Changing Dimensions

Implemented using dbt Snapshots.

Features:

- SCD Type 2
- Historical record tracking
- Automatic versioning

---

# Business Analysis

The Gold Analysis notebook answers business questions such as:

- Who are the highest-value customers?
- Which drivers generate the most revenue?
- How has revenue changed month-over-month?
- Which payment methods contribute the highest revenue?
- Customer segmentation using CASE statements
- Driver rankings using Window Functions
- Top drivers within each city
- Revenue contribution analysis

---

# SQL Concepts Demonstrated

- Window Functions
- RANK()
- ROW_NUMBER()
- DENSE_RANK()
- LAG()
- SUM() OVER()
- CASE
- ROLLUP
- Aggregations
- CTEs

---

# Skills Demonstrated

- Data Engineering
- ETL Pipeline Development
- Medallion Architecture
- PySpark Transformations
- Delta Lake
- Structured Streaming
- dbt
- SQL Analytics
- Data Modeling
- Git Version Control

---

# Future Improvements

- Power BI Dashboard
- Apache Airflow orchestration
- CI/CD using GitHub Actions
- Data Quality Monitoring
- Unit Testing for dbt Models

---

# Author

**Kartikeya Saraswat**

Data Professional | Python | PySpark | Databricks | dbt | SQL