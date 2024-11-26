select 
stocks.stock_id,
stores.store_id,
stores.store_name,
stocks.product_id,
stocks.quantity,
p.product_name
from {{ref('stg_bike_database__stocks')}} as stocks
left join {{ref('stg_bike_database__stores')}} as stores on stores.store_id = stocks.store_id 
left join {{ref('stg_bike_database__product')}} as p on p.product_id = stocks.product_id
