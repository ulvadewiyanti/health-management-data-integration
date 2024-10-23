-- models/datamart/dm_patient_overview.sql

{{ config(
    materialized='table' 
) }}

with patient_overview as (
    select
        ps.PatientID,
        ps.firstname,
        ps.lastname,
        SUM(ps.total_appointments) as total_appointments,
        COALESCE(SUM(ins.total_amount), 0) AS total_spent
    from
        {{ ref("int_patient_summary") }} ps
    left join
        {{ ref("int_invoice_summary")}} ins on ps.PatientID = ins.PatientID
    group by
        ps.PatientID, 
        ps.firstname, 
        ps.lastname
), patient_segment as (
    select 
        *,
        CASE
            WHEN total_spent > 1000 THEN 'High Spender'
            WHEN total_appointments > 10 THEN 'Frequent User'
            ELSE 'Occasional User'
        END AS customer_segment 
        from patient_overview
)

select * from patient_segment
