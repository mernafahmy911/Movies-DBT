select movie_rank
from {{ ref('dim_movies') }}
where movie_rank is null