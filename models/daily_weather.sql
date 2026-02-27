with daily_weather as (

select date(time) as daily_weather
,weather
,temp
,pressure
,humidity
,clouds
from {{ source('demo', 'weather') }}
)
, daily_weather_agg as (

select daily_weather
,weather
,count(weather)
from daily_weather
group by 1,2
)

select *
from daily_weather_agg