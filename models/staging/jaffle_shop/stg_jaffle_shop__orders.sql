WITH source_orders AS ( 

    SELECT * FROM {{ source('jaffle_shop', 'orders') }}

)

, renamed_orders AS (

select
    id as order_id,
    user_id as customer_id,
    order_date,
    status
from source_orders  

) 

SELECT * FROM renamed_orders