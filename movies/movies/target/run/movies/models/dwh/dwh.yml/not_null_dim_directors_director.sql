select director
from {{ ref('dim_directors') }}
where director is null