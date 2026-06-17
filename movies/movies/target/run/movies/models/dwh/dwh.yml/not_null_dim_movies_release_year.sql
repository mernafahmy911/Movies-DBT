select release_year
from {{ ref('dim_movies') }}
where release_year is null