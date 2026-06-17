select movie_rank
from {{ ref('stg_movies') }}
where movie_rank is null