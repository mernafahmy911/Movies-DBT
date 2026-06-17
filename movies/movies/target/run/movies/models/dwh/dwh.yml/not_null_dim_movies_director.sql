select director
from {{ ref('dim_movies') }}
where director is null