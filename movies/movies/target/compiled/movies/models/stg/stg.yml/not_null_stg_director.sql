select director
from {{ ref('stg_movies') }}
where director is null