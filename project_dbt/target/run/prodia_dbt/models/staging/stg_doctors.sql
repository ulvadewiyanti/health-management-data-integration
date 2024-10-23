
  
    

  create  table "prodia_test"."public"."stg_doctors__dbt_tmp"
  
  
    as
  
  (
    -- models/staging/stg_doctors.sql



    select *
    from "prodia_test"."public"."doctors"

  );
  