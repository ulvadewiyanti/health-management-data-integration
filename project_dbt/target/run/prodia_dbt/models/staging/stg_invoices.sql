
  
    

  create  table "prodia_test"."public"."stg_invoices__dbt_tmp"
  
  
    as
  
  (
    -- models/staging/stg_billings.sql



    select *
    from "prodia_test"."public"."invoices"

  );
  