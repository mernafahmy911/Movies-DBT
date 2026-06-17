select title
from {{ ref('dim_movies') }}
where title is null