select * from {{ref('dim_listings_cleansed')}}
where minimun_nights < 100
limit 10
