with date_dim as (
select
TO_TIMESTAMP(start_time) as START_AT_TIMESTAMP,
YEAR(TO_TIMESTAMP(start_time) ) as START_AT_YEAR,
MONTH(TO_TIMESTAMP(start_time) ) as START_AT_MONTH,
DAYNAME(TO_TIMESTAMP(start_time) ) as START_AT_DAY,
{{daytype('start_time')}} as DAY_TYPE,

{{station('start_time')}} AS STATION_OF_YEAR

from 
{{ source('demo', 'bike') }}
)

select *from date_dim 