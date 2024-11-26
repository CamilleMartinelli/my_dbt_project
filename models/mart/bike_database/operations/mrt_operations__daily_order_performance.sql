select 
    order_date,
    city,
    state,
    count(order_id) as total_orders,
    sum(total_order_item_amount) as total_order_amount,
    avg(total_order_item_amount) as avg_order_amount 
from {{ref('int_bike_database__orders')}}
group by 
    order_date,
    state,
    city