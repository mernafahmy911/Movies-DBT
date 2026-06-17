select director_id
from {{ ref('dim_directors') }}
where director_id is null