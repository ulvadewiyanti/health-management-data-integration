-- models/intermediate/int_appointment_details.sql

{{ config(
    materialized='table' 
) }}

with appointment_info as (
    select
        a.AppointmentID,
        a.AppointmentDate,
        a.AppointmentTime,
        p.PatientID,
        concat(p.firstname, ' ', p.lastname) as patient_name,
        d.DoctorName,
        pr.ProcedureName,
        case when a.AppointmentDate < CURRENT_DATE then 1 else 0 end as is_overdue
    from
        {{ ref('stg_appointments') }} a
    join
        {{ ref('stg_patients') }} p on a.PatientID = p.PatientID
    join
        {{ ref('stg_doctors') }} d on a.DoctorID = d.DoctorID
    left join
        {{ ref('stg_procedures') }} pr on a.AppointmentID = pr.AppointmentID
)

select * from appointment_info
