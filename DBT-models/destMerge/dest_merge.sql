{{
    config(
        materialized='incremental',
        unique_key='id'
    )
}}

select * from {{ ref("stg_add_country") }}

{% if is_incremental() %}

    where updated > (select max(updated) from {{ this }})

{% endif %}