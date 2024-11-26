select *
from {{ source('bike_database', 'staffs')}}