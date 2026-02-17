{% macro func(x) %}

case when to_timestamp({{x}}) < current_date then 'PAST'
else 'FUTURE' end 

{% endmacro %}