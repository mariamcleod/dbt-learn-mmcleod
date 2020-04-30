WITH source_customers as ( 

    SELECT * FROM {{ source('jaffle_shop', 'customers') }}
)

, renamed_customers as (

select
    id as customer_id,
    first_name,
    last_name
from source_customers

)

SELECT * FROM renamed_customers