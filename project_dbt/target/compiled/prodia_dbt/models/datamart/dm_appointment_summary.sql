-- models/datamart/dm_appointment_summary.sql



with appointment_summary as (
    select
        ad.AppointmentDate,
        ad.DoctorName,
        COUNT(ad.AppointmentID) AS total_appointments,
        COUNT(DISTINCT ad.ProcedureName) AS total_procedures
    from
        "prodia_test"."public"."int_appointment_details" ad
    group by
        ad.AppointmentDate, 
        ad.DoctorName
)

select * from appointment_summary