select 
o.order_id,
o.customer_id,
o.order_date,
c.city,
c.state,
o.order_status,
o.store_id,
o.staff_id,
sum(item_quantity) as total_item_quantity,
sum(total_order_item_amount) as total_order_item_amount
from {{ref('int_bike_database__order_items')}} as o
left join {{ref('stg_bike_database__customers')}} as c ON c.customer_id = o.customer_id
group by 
o.order_id,
o.customer_id,
c.city,
c.state, 
o.order_status,
o.order_date,
o.store_id,
o.staff_id,
o.order_date