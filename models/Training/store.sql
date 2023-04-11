{{ config(materialized='table') }}
with store_tbl_2023 as
(
select * from {{ source('test_prod', 'Store_2023')}}
)
select * from store_tbl_2023