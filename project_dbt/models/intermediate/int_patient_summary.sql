-- models/intermediate/int_patient_summary.sql
{{ config(
    materialized='table'  
) }}

with patient_appointments as (
    select
        p.PatientID,
        p.firstname,
        p.lastname,
        count(a.AppointmentID) as total_appointments
    from
        {{ ref('stg_patients') }} p
    left join
        {{ ref('stg_appointments') }} a on p.PatientID = a.PatientID
    group by
        p.PatientID,
        p.firstname,
        p.lastname
)

select * from patient_appointments