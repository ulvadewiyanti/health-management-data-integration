-- models/datamart/dm_doctor_performance.sql



with doctor_performance as (
    SELECT
        ad.DoctorName,
        COUNT(ad.AppointmentID) AS total_appointments,
        SUM(i.total_amount) AS total_revenue
    FROM
        "prodia_test"."public"."int_appointment_details" ad
    LEFT JOIN
        "prodia_test"."public"."int_invoice_summary" i ON ad.PatientID = i.PatientID
    GROUP BY
        ad.DoctorName
)

select * from doctor_performance