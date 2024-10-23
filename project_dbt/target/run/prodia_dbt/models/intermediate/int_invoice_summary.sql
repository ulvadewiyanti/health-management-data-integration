
  
    

  create  table "prodia_test"."public"."int_invoice_summary__dbt_tmp"
  
  
    as
  
  (
    -- models/intermediate/int_invoice_summary.sql



with invoice_summary as (
    select
        i.InvoiceID,
        i.PatientID,
        sum(i.Amount) as total_amount,
        count(i.Items) as item_count
    from
        "prodia_test"."public"."stg_invoices" i
    group by
        i.InvoiceID,
        i.PatientID
)

select * from invoice_summary
  );
  