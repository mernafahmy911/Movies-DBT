
🚀 DBT Movies Project 
1. Project Initialization
Created a new dbt project named movies using dbt init.

Configured dbt_project.yml with project name, version, and model paths.

Set up profiles.yml to establish a connection with DuckDB database.

2. Environment Configuration
Configured two separate environments:

Development (dev): For testing and development with 1 thread.

Production (prod): For production with 4 threads for better performance.

Defined database paths for both environments (dev.duckdb / prod.duckdb).

3. Data Loading (Seeds)
Loaded raw movie data from CSV files using dbt seeds.

Configured seed settings:

File format: CSV.

Header: true.

Delimiter: comma (,).

Placed seed files in the seeds/ directory.

4. Data Modeling Structure
Designed a layered architecture following Kimball's dimensional modeling:

a) Staging Layer (Views)

Created staging models to clean and prepare raw data.

Materialized as views for flexibility.

b) Dimension Tables

Built dimension tables:

dim_directors: Director information.

dim_movies: Movie details.

dim_production: Production company data.

Materialized as tables for faster query performance.

c) Fact Table

Created fact_table to connect all dimensions.

Contains foreign keys to dimension tables.

Materialized as a table for analytical queries.

5. Materialization Strategy
Used different materialization types based on use cases:

Views: For staging models (lightweight, always up-to-date).

Tables: For dimension and fact tables (performance optimization).

6. Profile & Connection Setup
Created profiles.yml file in ~/.dbt/ directory.

Defined the movies profile with:

Connection type: DuckDB.

Database paths for dev and prod.

Thread configuration for parallel execution.

7. Testing & Quality Assurance
Implemented dbt tests to ensure data quality:

not_null: Check for null values in primary keys.

unique: Verify uniqueness of key columns.

Used dbt test command to run all tests.

8. Documentation
Documented all models with descriptions.

Added column descriptions for better understanding.

Generated project documentation using dbt docs generate and dbt docs serve.

9. Build & Execution
Executed the complete pipeline using:

dbt build: Runs seeds, models, and tests in one command.

dbt run: Builds models only.

dbt test: Runs data quality tests.

Successfully built and validated all models.

10. Troubleshooting & Debugging
Used dbt debug to verify connections and configurations.

Resolved the "Could not find profile named 'movies'" error.

Fixed environment and path issues for Windows.

Ensured smooth execution of the entire pipeline.

11. Version Control
Managed the project using Git for version control.

Created a repository on GitHub.

Committed all configurations, models, and documentation.

