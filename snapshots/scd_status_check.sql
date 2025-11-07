{% snapshot scd_status_check %}
    {{
        config(
            target_schema='dev_schema',
            target_database='hdfc_db',
            unique_key='id',
            strategy='check',
            check_cols=['status']

        )
    }}

    select * from {{ source('s1', 't_ticket_track') }}
 {% endsnapshot %}