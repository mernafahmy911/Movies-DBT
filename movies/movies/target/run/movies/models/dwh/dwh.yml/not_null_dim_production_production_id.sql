select production_id
from {{ ref('dim_production') }}
where production_id is null