-- models/datamart/dm_monthly_revenue.sql



WITH monthly_trends AS (
    SELECT
        DATE_TRUNC('month', AppointmentDate) AS month,
        COUNT(AppointmentID) AS total_appointments,
        SUM(total_amount) AS total_revenue
    FROM
        "prodia_test"."public"."int_appointment_details" ad
    JOIN
        "prodia_test"."public"."int_invoice_summary" i ON ad.PatientID = i.PatientID
    GROUP BY
        month
)

select * from monthly_trends