select
*
from {{ source('demo', 'weather') }}

limit 100


-- select 
-- *
-- from {{ ref('my_second_dbt_model') }}
-- limit 10