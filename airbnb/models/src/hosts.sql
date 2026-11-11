with raw_hosts as (
    select * from     select * from {{ source('airbnb', 'hosts') }}
)
select 
    id as hosts_id,
    name as hosts_name,
    is_superhost,
    created_at as creation_date,
    updated_at as update_date
FROM raw_hosts