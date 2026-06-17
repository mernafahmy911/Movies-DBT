select title
from {{ ref('stg_movies') }}
where title is null