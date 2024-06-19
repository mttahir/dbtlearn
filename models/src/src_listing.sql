with raw_listing as (
select * from AIRBNB.raw.raw_listings)
select 
    id as listing_id,
    name as listing_name,
    listing_url,
    room_type,
    minimum_nights,
    host_id,
    price as price_str,
    created_at,
    UPDATED_AT
from
    raw_listing