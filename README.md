# Healthcare Analytics Data Warehouse (Azure SQL)

## Problem Statement
Healthcare organizations need reliable, historical data to analyze patient visits, treatment costs, and hospital performance. 
This project implements a cloud-based analytical data warehouse using Azure SQL Database to support reporting and analytics.

---

## Architecture
Source Data (Simulated)
   → SQL Transformations
   → Azure SQL Data Warehouse (Star Schema)

---

## Data Model
- **Fact Table:** fact_patient_visit
- **Dimensions:** dim_patient (SCD Type 2), dim_doctor, dim_hospital, dim_date

The star schema enables efficient analytical queries and historical analysis.

---

## Key Features
- Star schema data modeling
- Slowly Changing Dimension (Type 2) implementation
- Incremental data load simulation
- Data quality checks (duplicates, orphan records, invalid data)
- Advanced analytics using SQL window functions
- Performance optimization using indexing strategies

---

## Technology Stack
- SQL Server / Azure SQL Database
- SQL (DDL, DML, window functions)
- Cloud-hosted relational data warehouse

---

## Execution Flow
1. Create schema and tables
2. Load initial dimension and fact data
3. Apply incremental updates using SCD Type 2 logic
4. Perform data quality validation
5. Run analytical queries
6. Optimize performance using indexes

---

## Sample Analytics
- Total treatment cost per patient
- Revenue ranking of doctors
- Running total of hospital revenue over time

---

## What I Learned
- Designing analytical data models using star schemas
- Implementing SCD Type 2 for historical tracking
- Writing performance-optimized SQL for analytical workloads
- Executing and managing data pipelines on Azure SQL Database
