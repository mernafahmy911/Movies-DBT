select custom_score
from {{ ref('stg_movies') }}
where custom_score is null