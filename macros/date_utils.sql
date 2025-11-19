{%macro station(x)%}

CASE
WHEN MONTH(TO_TIMESTAMP({{x}}) ) in (12,1,2)
THEN 'Winter'
WHEN MONTH(TO_TIMESTAMP({{x}}) ) in (3,4,5)
THEN 'SUMMER'
ELSE 'SPRING'
END 
{%endmacro%}

{%macro daytype(x)%}

CASE 
WHEN DAYNAME(TO_TIMESTAMP({{x}}) ) in ('Sat','Sun')
THEN 'Weekend'
ELSE 'Weekday'
END

{%endmacro%}