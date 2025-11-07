select n_name, {{macro_discount("price","n_name")}} as final_price
from {{ source('s1', 't_discount') }}