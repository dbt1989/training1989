{% snapshot employee_snapshot2 %}

{{
    config(
      target_database='DBT_DB',
      target_schema='PROD',
      unique_key='employee_id',

      strategy='check',
      check_cols=[employee_name,State],
    )
}}

select * from PROD.STG_EMP02



{% endsnapshot %}