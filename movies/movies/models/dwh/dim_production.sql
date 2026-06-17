{{ config(materialized='table') }}

WITH prod_stats AS (
    SELECT 
        production_company,
        COUNT(*) AS movie_count
    FROM {{ ref('stg_movies') }}
    WHERE production_company IS NOT NULL
    GROUP BY production_company
)
SELECT 
    ROW_NUMBER() OVER (ORDER BY production_company) AS id,
    production_company,
    movie_count
FROM prod_stats