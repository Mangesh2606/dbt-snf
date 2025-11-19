WITH bike_station as (
    select
    start_statio_id as station_id,
    start_station_name as station_name,
    start_lat as start_station_lat,
    start_lng as start_station_lng
    from {{ source('demo', 'bike') }}
)

select
*
from bike_station