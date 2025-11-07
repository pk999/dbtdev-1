{{
    config(
        materialized='ephemeral'
    )
}}
with customers as (
select
customer_id as customer_id,
first_name,
last_name
from hdfc_db.banking_schema.customers
)
select * from customers