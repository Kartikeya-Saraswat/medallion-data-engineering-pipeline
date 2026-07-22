# 🚖 Ride Analytics Data Platform
### End-to-End Data Engineering Pipeline using Databricks, PySpark, Delta Lake & dbt

## 📌 Project Overview

This project demonstrates an end-to-end modern data engineering pipeline built using the **Medallion Architecture (Bronze → Silver → Gold)** on Databricks.

The pipeline ingests raw ride-sharing data, performs scalable data transformations using **PySpark**, stores data as **Delta Tables**, models analytical datasets using **dbt**, and produces business-ready data marts for reporting and decision making.

The project follows industry-standard data engineering practices including:

- Incremental data ingestion
- Structured Streaming
- Delta Lake
- Data Modeling
- Data Quality Testing
- Slowly Changing Dimensions (SCD Type 2)
- Business Analytics using Advanced SQL

---

# 🏗️ Architecture

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
        Gold Layer (dbt Business Models)
                      │
                      ▼
     Business Analytics (SQL Notebook)
```

---

# 🚀 Technologies Used

- Databricks
- Apache Spark (PySpark)
- Delta Lake
- Structured Streaming
- dbt Core
- SQL
- Git & GitHub

---

# 📂 Project Structure

```
.
├── analyses/
│
├── macros/
│
├── models/
│   ├── bronze/
│   ├── silver/
│   └── gold/
│
├── snapshots/
│
├── tests/
│
├── README.md
│
└── dbt_project.yml
```

---

# 🥉 Bronze Layer

The Bronze layer performs incremental ingestion of raw ride-sharing datasets into Delta tables using **Structured Streaming**.

### Responsibilities

- Incremental data ingestion
- Schema enforcement
- Fault-tolerant checkpointing
- Raw data preservation

### Tables

- Customers
- Drivers
- Trips
- Payments
- Vehicles
- Locations

---

# 🥈 Silver Layer

The Silver layer transforms raw data into standardized datasets using PySpark.

### Transformations

- Duplicate removal
- Null handling
- Data cleaning
- Phone number standardization
- Customer name formatting
- Email domain extraction
- Data type conversions
- Incremental MERGE operations

---

# 🥇 Gold Layer

The Gold layer contains reusable business models built using **dbt**.

### Dimension Models

- dimCustomers
- dimDrivers
- dimVehicles
- dimPayments
- dimLocations

### Fact Model

- factTrips

### Business Models

- customer_summary
- driver_summary
- vehicle_summary
- payment_summary
- monthly_revenue

These models provide reusable datasets for reporting, dashboards and business analytics.

---

# ✅ Data Quality

The project uses **dbt Tests** to ensure reliable and trustworthy datasets.

Implemented tests include:

- Unique constraints
- Not Null validations
- Relationship tests
- Source validations

---

# 🕒 Slowly Changing Dimensions

Implemented using **dbt Snapshots (SCD Type 2)**.

Features:

- Historical record tracking
- Automatic versioning
- Change detection
- Dimension history preservation

---

## 📓 Databricks Notebooks

The repository includes Databricks notebooks implementing the complete Medallion Architecture pipeline.

### Bronze Layer
- Incremental ingestion using Structured Streaming
- Delta table creation
- Checkpointing and schema enforcement

### Silver Layer
- Data cleansing and standardization
- Deduplication
- Incremental MERGE operations
- Feature engineering

### Gold Layer
- Business analytics using reusable dbt models
- Advanced SQL with window functions, ranking, cumulative metrics, and customer segmentation

---

# 📊 Business Analytics

The Gold Analysis notebook demonstrates how business-ready datasets can answer real-world business questions using advanced SQL.

## Customer Analytics

### 🔹 Who are the top 10 customers?

Identifies the highest-value customers based on lifetime spending.

**Business Value**

- Customer loyalty programs
- VIP customer identification
- Revenue concentration analysis

---

### 🔹 Customer Segmentation

Customers are classified into:

- Gold
- Silver
- Bronze

using SQL CASE statements.

**Business Value**

- Personalized marketing
- Customer retention strategies
- Loyalty campaigns

---

## Driver Analytics

### 🔹 Driver Revenue Ranking

Ranks drivers based on revenue generated using SQL Window Functions.

**Business Value**

- Incentive programs
- Driver performance evaluation

---

### 🔹 Top 3 Drivers in Each City

Uses ROW_NUMBER() to identify the highest-performing drivers within every city.

**Business Value**

- Regional performance tracking
- Local incentive planning

---

## Revenue Analytics

### 🔹 Month-over-Month Revenue Growth

Uses LAG() to compare revenue against the previous month.

**Business Value**

- Trend analysis
- Growth monitoring

---

### 🔹 Cumulative Revenue

Uses SUM() OVER() to calculate running revenue.

**Business Value**

- Business growth tracking
- Executive reporting

---

## Payment Analytics

### 🔹 Revenue Contribution by Payment Method

Calculates each payment method's percentage contribution to total revenue.

**Business Value**

- Payment strategy optimization
- Customer payment behavior analysis

---

### 🔹 Revenue Summary

Uses SQL ROLLUP to generate payment-wise revenue along with the grand total.

**Business Value**

- Financial reporting
- Executive summaries

---

## Fleet Analytics

### 🔹 Vehicle Revenue Ranking

Ranks vehicle types based on generated revenue using DENSE_RANK().

**Business Value**

- Fleet optimization
- Vehicle investment planning

---

# 💡 SQL Concepts Demonstrated

- Aggregations
- Window Functions
- CASE
- RANK()
- DENSE_RANK()
- ROW_NUMBER()
- LAG()
- SUM() OVER()
- ROLLUP
- CTEs

---

# 🎯 Skills Demonstrated

- Data Engineering
- ETL Pipeline Development
- Medallion Architecture
- Apache Spark
- PySpark
- Delta Lake
- Structured Streaming
- dbt
- SQL Analytics
- Data Modeling
- Data Quality Testing
- SCD Type 2
- Git Version Control

---

# 🔮 Future Enhancements

- Interactive Power BI Dashboard
- Apache Airflow Orchestration
- CI/CD using GitHub Actions
- Automated Data Quality Monitoring
- Cloud Deployment (Azure/AWS)

---

# 👨‍💻 Author

**Kartikeya Saraswat**

Data Professional

Python • SQL • PySpark • Databricks • Delta Lake • dbt