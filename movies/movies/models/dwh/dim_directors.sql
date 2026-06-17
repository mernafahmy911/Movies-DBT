{{ config(materialized='table') }}

SELECT 
    ROW_NUMBER() OVER (ORDER BY director) AS director_id,
    director,
    total_movies
FROM (
    SELECT 
        director,
        COUNT(*) AS total_movies
    FROM {{ ref('stg_movies') }}
    GROUP BY director
) t
WHERE director IS NOT NULL