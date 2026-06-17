select imdb_id
from {{ ref('stg_movies') }}
where imdb_id is null