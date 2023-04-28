{{
    config(
        materialized='incremental',
        unique_key='Product_id'
    )
}}

select * from PROD.Product

{% if is_incremental() %}

where
  updated_at > (select max(updated_at) from {{ this }})

{% endif %}
