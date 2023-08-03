{{
  config(
    materialized = 'view',
    )
}}
with raw_insurance as (
    select * from {{source('insurance','insurance')}}
    )
select 
    patient_id, 
    age, 
    sex,
    bmi, 
    children, 
    smoker, 
    region, 
    expenses
from 
    raw_insurance
