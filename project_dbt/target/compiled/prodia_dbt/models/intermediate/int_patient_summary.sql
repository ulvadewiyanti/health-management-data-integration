-- models/intermediate/int_patient_summary.sql


with patient_appointments as (
    select
        p.PatientID,
        p.firstname,
        p.lastname,
        count(a.AppointmentID) as total_appointments
    from
        "prodia_test"."public"."stg_patients" p
    left join
        "prodia_test"."public"."stg_appointments" a on p.PatientID = a.PatientID
    group by
        p.PatientID,
        p.firstname,
        p.lastname
)

select * from patient_appointments