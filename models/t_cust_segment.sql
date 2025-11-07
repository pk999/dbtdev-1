select c_mktsegment, c_nationkey, c_name, n_name,{{macro_segment("c_mktsegment")}}
from {{ source('s1', 't_customers') }} inner join {{ source('s1', 't_nations') }} 
on c_nationkey = n_nationkey
