{% snapshot scd_stg_insurance %}

{{
   config(
       target_database='AIRBNB_CLOUD',
       target_schema='DBT_MNAGALADINNI',
       unique_key='patient_id',
       strategy='check',
       check_cols=['children'],
       invalidate_hard_deletes = True
   )
}}
select * from {{ref("stg_insurance")}}
{% endsnapshot %}