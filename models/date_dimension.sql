with cte as(
    select 
    joindate, 
    to_timestamp(joindate) as TimeStamp_Date, 
    dayname(to_timestamp(joindate)) as Join_Day,
    {{func('joindate')}}

    from {{ source('db', 'table1')}}
)
select * from 
cte




