{{ config(materialized='view') }}


with 

source as (

    select * from {{ source('eq_data', 'eqdata') }}

),
casted as (
    select cast(time as date) as date,
    cast(CONVERT_TIMEZONE('America/New_York',time) as time) as time_short,
    to_geography(ST_MAKEPOINT(longitude,latitude)) as geo,
        time,
        latitude,
        longitude,
        depth,
        mag,
        magtype,
        nst,
        gap,
        dmin,
        rms,
        net,
        id,
        updated,
        place,
        type,
        horizontalerror,
        deptherror,
        magerror,
        magnst,
        status,
        locationsource,
        magsource
 
 from source
)

select * from casted