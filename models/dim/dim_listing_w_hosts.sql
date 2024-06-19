with l as (
    select * from {{ ref("dim_listing_cleansed")}}
),
h as(
    select * from {{ref("dim_hosts_cleansed")}}
) 
select
    l.listing_id,
    l.listing_name,
    l.room_type,
    l.minimum_nights,
    l.price,
    l.host_id,
    h.host_name,
    h.IS_SUPERHOST as host_is_superhost,
    l.created_at,
    greatest(l.UPDATED_AT,h.UPDATED_AT) as UPDATED_AT
from l
left join h ON (h.host_id = l.host_id)
