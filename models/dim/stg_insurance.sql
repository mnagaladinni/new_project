with raw_insurance as (
    select * from {{ref("raw_insurance")}}
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
