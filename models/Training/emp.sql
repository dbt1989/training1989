{{ config(materialized='table') }}
with employee as
(
select * from {{ source('emp', 'employee')}}
)
select * from employee