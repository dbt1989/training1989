{% snapshot employee_01_snapshot %}

{{
    config(
      target_database='DBT_DB',
      target_schema='PROD',
      unique_key='employee_id',

      strategy='check',
      check_cols=['employee_name', 'State'],
    )
}}

select * from PROD.STG_EMP_TBL_01



{% endsnapshot %}