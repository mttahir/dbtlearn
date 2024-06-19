{{
  config(
    materialized = 'view',
    )
}}
with src_hosts as (
    select * from {{ ref("src_hosts") }}
)
select
    host_id,
    NVL(host_name,'Anynoms') as host_name,
    IS_SUPERHOST,
    CREATED_AT,
    UPDATED_AT
from 
    src_hosts
