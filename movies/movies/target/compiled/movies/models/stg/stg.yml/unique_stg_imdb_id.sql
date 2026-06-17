select
    imdb_id as unique_field,
    count(*) as n_records
from {{ ref('stg_movies') }}
where imdb_id is not null
group by imdb_id
having count(*) > 1