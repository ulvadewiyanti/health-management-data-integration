-- models/intermediate/int_invoice_summary.sql

{{ config(
    materialized='table' 
) }}

with invoice_summary as (
    select
        i.InvoiceID,
        i.PatientID,
        sum(i.Amount) as total_amount,
        count(i.Items) as item_count
    from
        {{ ref('stg_invoices') }} i
    group by
        i.InvoiceID,
        i.PatientID
)

select * from invoice_summary
