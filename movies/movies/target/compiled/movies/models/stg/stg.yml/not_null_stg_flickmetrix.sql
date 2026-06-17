select flickmetrix_score
from {{ ref('stg_movies') }}
where flickmetrix_score is null