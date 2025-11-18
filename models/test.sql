select 
* from {{ source('demo', 'weather1') }}
limit 10