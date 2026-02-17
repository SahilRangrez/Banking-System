with ctee as(
    select * from {{ source('db', 'table2') }} limit 20
)

-- select * from ctee where product = 'Mouse' order by customerid desc
select to_timestamp(orderdate) as stampDate, month(stampDate) as Joining_Month, dayname(stampDate) as Joining_Day
from ctee