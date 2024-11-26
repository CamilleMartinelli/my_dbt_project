select order_id,
item_id,
CONCAT(order_id, "_", item_id) as order_item_id,
product_id,
quantity as item_quantity,
list_price as item_price,
discount, 
quantity * (list_price * (1-discount)) as total_order_item_amount
from {{source('bike_database', 'order_items')}}