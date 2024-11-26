with products_sold as ( 

select store_id,
    product_id,
    sum(item_quantity) as total_item_sold,
    sum(total_order_item_amount) as total_sales_amount
from {{ref('int_bike_database__order_items')}}
group by 
    store_id,
    product_id
)

select stocks.store_id,
stocks.product_id,
stocks.product_name,
stocks.quantity,
products_sold.total_item_sold,
products_sold.total_sales_amount 

from {{ref('int_bike_database__stocks')}} as stocks 
left join products_sold on stocks.store_id = products_sold.store_id
and stocks.product_id = products_sold.product_id