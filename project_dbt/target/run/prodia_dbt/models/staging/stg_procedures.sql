
  
    

  create  table "prodia_test"."public"."stg_procedures__dbt_tmp"
  
  
    as
  
  (
    -- models/staging/stg_procedures.sql



    select *
    from "prodia_test"."public"."procedures"

  );
  