with 

source as (

    select * from {{ source('eq_data', 'countries_geo') }}

),

renamed as (

    select
        country,
        geog

    from source

)

select * from renamed
