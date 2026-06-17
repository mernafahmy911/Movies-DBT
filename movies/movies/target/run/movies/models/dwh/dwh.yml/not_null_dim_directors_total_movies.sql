select total_movies
from {{ ref('dim_directors') }}
where total_movies is null