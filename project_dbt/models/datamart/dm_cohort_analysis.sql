-- models/datamart/dm_cohort_analysis.sql

{{ config(
    materialized='table' 
) }}

with cohort_analysis as (
    select 
        DATE_TRUNC('month', AppointmentDate) AS cohort_month,
        COUNT(DISTINCT PatientID) AS patients_in_cohort
    from
        {{ ref("int_appointment_details") }}
    group by
        cohort_month  
)

select * from cohort_analysis