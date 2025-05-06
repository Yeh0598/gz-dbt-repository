with 

source as (

    select * from {{ source('raw', 'product') }}

),

renamed as (

    select
        products_id AS products_id,
        purchse_price AS purchase_price float

    from source

)

select * from renamed
