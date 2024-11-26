select
    p.product_id,
    p.product_name,
    c.category_name,
    b.brand_name
from {{ref('stg_bike_database__product')}} as p 
left join {{ref('stg_bike_database__category')}} as c on c.category_id = p.category_id 
left join {{ref('stg_bike_database__brands')}} as b on b.brand_id = p.brand_id 