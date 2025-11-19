WITH CTE AS (

    SELECT 
    W.*,
    T.*
    FROM {{ ref('daily_weather') }} W
    RIGHT JOIN {{ ref('trips_fact') }} T
)

SELECT *
FROM CTE