-- models/datamart/dm_cohort_analysis.sql



with cohort_analysis as (
    select 
        DATE_TRUNC('month', AppointmentDate) AS cohort_month,
        COUNT(DISTINCT PatientID) AS patients_in_cohort
    from
        "prodia_test"."public"."int_appointment_details"
    group by
        cohort_month  
)

select * from cohort_analysis