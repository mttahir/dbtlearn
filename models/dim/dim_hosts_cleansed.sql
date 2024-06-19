with src_hosts as (
    select * from {{ ref("src_hosts") }}
)
select
    host_id,
    case
    when host_name  is null then 'abc'
    else host_name 
    end as host_name,
    IS_SUPERHOST,
    CREATED_AT,
    UPDATED_AT
from 
    src_hosts
