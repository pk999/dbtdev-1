{{
    config(
        materialized='ephemeral'
    )
}}
with orders as (
select
order_id as order_id,
customer_id as customer_id,
order_date,
status
from hdfc_db.banking_schema.orders
)
select * from orders