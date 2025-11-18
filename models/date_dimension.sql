with date_dim as (
select
TO_TIMESTAMP(start_time) as START_AT_TIMESTAMP,
YEAR(TO_TIMESTAMP(start_time) ) as START_AT_YEAR,
MONTH(TO_TIMESTAMP(start_time) ) as START_AT_MONTH,
DAYNAME(TO_TIMESTAMP(start_time) ) as START_AT_DAY,
CASE 
WHEN DAYNAME(TO_TIMESTAMP(start_time) ) in ('Sat','Sun')
THEN 'Weekend'
ELSE 'Weekday'
END as DAY_TYPE,
CASE
WHEN MONTH(TO_TIMESTAMP(start_time) ) in (12,1,2)
THEN 'Winter'
WHEN MONTH(TO_TIMESTAMP(start_time) ) in (3,4,5)
THEN 'SUMMER'
ELSE 'SPRING'
END AS STATION_OF_YEAR

from 
{{ source('demo', 'bike') }}
)

select *from date_dim