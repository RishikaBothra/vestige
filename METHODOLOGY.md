# Methodology

## Data Cleaning
Raw data containing millions of Aadhaar enrolment, demographic, and biometric records across Indian states was imported into PostgreSQL. Data cleaning involved: (1) importing CSV files with type validation and NOT NULL constraints, (2) identifying and handling null values in date, state, and district fields, and (3) standardizing state names by mapping naming variants (case differences, separators, spelling variations) to 36 canonical Indian state/union territory names.

## Data Preprocessing
Cleaned data was standardized by converting date columns to datetime format and text fields to string type. Processed data was cached in Apache Parquet format for efficient retrieval in subsequent analysis notebooks, eliminating redundant database queries.

## Data Transformations
Raw transaction-level data was aggregated across geographic (state, district) and temporal (monthly, yearly) dimensions using SQL and pandas operations. Derived metrics were computed including: Aadhaar penetration rates, per-capita activity metrics, infrastructure efficiency indices (enrolments/updates per centre), operational stress indicators (enrolment pressure, update pressure, identity churn indices), and state-level rankings across multiple dimensions. Enrolment, demographic, and biometric datasets were joined to enable comparative analysis of activity types, and external datasets (population projections, literacy rates) were integrated for contextualization.

## Data Validation
Quality assurance included verification of row counts across aggregations, validation of date ranges and non-negative constraints, and outlier detection for anomalous state-level metrics. All transformations were reproducible through documented SQL scripts and cached Parquet files.
