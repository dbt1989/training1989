{{ config(materialized='ephemeral') }}

select * from Prod.employee