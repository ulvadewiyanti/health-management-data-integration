
  
    

  create  table "prodia_test"."public"."stg_patients__dbt_tmp"
  
  
    as
  
  (
    -- models/staging/stg_patients.sql



    select *
    from "prodia_test"."public"."patients"

  );
  