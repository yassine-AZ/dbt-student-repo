{{
    config(
        materialized='view',
    )
}}
with hosts as (
    select * from {{ ref('hosts') }}
)
select 
    hosts_id,
    nvl(hosts_name,'Unknown') as hosts_name,
    is_superhost,
    creation_date,
    update_date
from hosts

    