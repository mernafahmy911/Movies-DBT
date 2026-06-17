select imdb_id
from {{ ref('dim_movies') }}
where imdb_id is null