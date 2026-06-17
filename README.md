# 🎬 DBT Movies Project

## Overview

This project demonstrates a complete end-to-end data transformation workflow using **dbt (Data Build Tool)** and **DuckDB**. The goal is to transform raw movie datasets into a structured dimensional model suitable for analytics and reporting.

---

## 🚀 Project Workflow

### 1. Project Initialization

* Created a new dbt project using `dbt init`.
* Configured `dbt_project.yml` with project settings, model paths, and materialization preferences.
* Set up `profiles.yml` to connect dbt with DuckDB.

### 2. Environment Configuration

Configured two separate environments:

#### Development Environment

* Database: `dev.duckdb`
* Threads: 1
* Used for testing and development.

#### Production Environment

* Database: `prod.duckdb`
* Threads: 4
* Optimized for production workloads.

---

### 3. Data Loading (Seeds)

* Loaded raw movie datasets from CSV files using **dbt seeds**.
* Configured seed settings:

  * File format: CSV
  * Header: True
  * Delimiter: Comma (,)
* Stored all source files inside the `seeds/` directory.

---

### 4. Data Modeling

The project follows a layered architecture based on **Kimball Dimensional Modeling**.

#### Staging Layer

* Created staging models to clean and standardize raw data.
* Materialized as **Views** for flexibility and maintainability.

#### Dimension Tables

Built the following dimensions:

* `dim_directors`
* `dim_movies`
* `dim_production`

Materialized as **Tables** to improve query performance.

#### Fact Table

Created a central `fact_table` containing:

* Foreign keys to all dimension tables.
* Business metrics for analytical reporting.

Materialized as a **Table** for optimized performance.

---

### 5. Materialization Strategy

| Layer      | Materialization |
| ---------- | --------------- |
| Staging    | View            |
| Dimensions | Table           |
| Fact Table | Table           |

This approach balances performance, storage efficiency, and maintainability.

---

### 6. Data Quality Testing

Implemented dbt tests to ensure data integrity:

* `not_null` tests for primary keys.
* `unique` tests for key columns.
* Automated validation using `dbt test`.

---

### 7. Documentation

* Added descriptions for all models and columns.
* Generated interactive documentation using:

```bash
dbt docs generate
dbt docs serve
```

This provides a clear data lineage and model documentation.

---

### 8. Build & Execution

Common commands used in the project:

```bash
dbt build
dbt run
dbt test
dbt debug
```

* `dbt build` → Runs seeds, models, and tests.
* `dbt run` → Executes models only.
* `dbt test` → Validates data quality.
* `dbt debug` → Verifies project configuration and connections.

---

### 9. Troubleshooting

Resolved several common issues including:

* Missing profile configuration.
* Connection setup errors.
* Environment path issues on Windows.
* Profile recognition errors such as:

  ```
  Could not find profile named 'movies'
  ```

---

### 10. Version Control

* Managed the project using Git.
* Published the repository on GitHub.
* Tracked all models, configurations, tests, and documentation through version control.

---

## 🛠️ Technologies Used

* dbt
* DuckDB
* SQL
* Git & GitHub
* CSV Data Sources

---

## 📊 Architecture

```text
CSV Files
    ↓
dbt Seeds
    ↓
Staging Models (Views)
    ↓
Dimension Tables
    ↓
Fact Table
    ↓
Analytics & Reporting
```

## ✅ Key Features

* End-to-End ELT Workflow
* Dimensional Modeling (Star Schema)
* Data Quality Testing
* Automated Documentation
* Multi-Environment Configuration
* Version Control with GitHub
* Optimized Materialization Strategy
