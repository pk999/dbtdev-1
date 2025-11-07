{% macro macro_segment(column_name) %}
     case when {{column_name}} in ('BUILDING','HOUSEHOLD','FURNITURE') then 'Home_Segment'
     when {{column_name}} in ('MACHINERY','AUTOMOBILE ') then 'Auto_Segment'
     else 'Others'
     end  
{% endmacro %}