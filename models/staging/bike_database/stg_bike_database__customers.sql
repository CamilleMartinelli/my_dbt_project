select * 
from {{ source('bike_database', 'customers')}}