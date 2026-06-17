{{ config(materialized='table') }}

select
    row_number() over (order by production_company) as production_id,
    production_company,
    count(*) as total_movies
from {{ ref('stg_movies') }}
where production_company is not null
group by production_company