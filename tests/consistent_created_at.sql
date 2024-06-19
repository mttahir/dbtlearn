select * from {{ ref("dim_listing_cleansed") }} l
inner join {{ ref("fct_reviews") }} f
using(listing_id)
where l.created_at >= f.review_date