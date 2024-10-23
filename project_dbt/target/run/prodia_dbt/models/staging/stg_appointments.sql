
  
    

  create  table "prodia_test"."public"."stg_appointments__dbt_tmp"
  
  
    as
  
  (
    -- models/staging/stg_appointments.sql



    select *
    from "prodia_test"."public"."appointments"

  );
  