{{
    config(
        pre_hook=["insert into hdfc_db.dev_Schema.t_audit(model_name,d_time,status) 
        values
        ('t_cust_segment',current_timestamp(),'started')"],
        post_hook=["insert into hdfc_db.dev_Schema.t_audit(model_name,d_time,status)
         values
        ('t_cust_segment',current_timestamp(),'completed')"]        
    )
}}
select c_mktsegment, c_name,n_name,{{macro_segment("c_mktsegment")}} as new_Segment
from
{{ source('s1', 't_customers') }} inner join {{ source('s1', 't_nations') }} 
on n_nationkey=c_nationkey
