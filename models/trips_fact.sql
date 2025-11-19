WITH trips as (
select 
ride_id,
rideable_type,
DATE(TO_TIMESTAMP(start_time)) AS START_DATE,
START_STATIO_ID AS START_STATION_ID,
END_STATION_ID,
DATEDIFF(SECOND,TO_TIMESTAMP(start_time),TO_TIMESTAMP(END_TIME)) AS TRIP_DURATION_SECONDS
from {{ source('demo', 'bike') }}
)

select *
from trips