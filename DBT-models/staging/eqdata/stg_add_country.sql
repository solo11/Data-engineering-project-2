with
    source as (select * from {{ ref('stg_eqdata__eqdata') }}),

countries as (

    select * from {{ source('eq_data', 'countries_geo') }}

),

    joined as (
        select
            a.*,
            b.country as country
        from source a
        join
            countries b
            on st_contains(b.geog, to_geography(st_makepoint(a.longitude, a.latitude)))
    )

select *
from joined