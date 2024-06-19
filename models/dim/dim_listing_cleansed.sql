with src_listing as (
    select * from {{ ref("src_listing") }}
)
select
    listing_id,
    listing_name,
    listing_url,
    room_type,
    case
        when minimum_nights =0 THEN 1
        else minimum_nights
    end AS minimum_nights,
    host_id,
    REPLACE(price_str,'$','') :: NUMBER(10,2) as Price,
    created_at,
    UPDATED_AT
from
    src_listing