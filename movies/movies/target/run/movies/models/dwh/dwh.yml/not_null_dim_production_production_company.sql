select production_company
from {{ ref('dim_production') }}
where production_company is null