
  create view "prodia_test"."public"."my_second_dbt_model__dbt_tmp"
    
    
  as (
    -- Use the `ref` function to select from other models

select *
from "prodia_test"."public"."my_first_dbt_model"
where id = 1
  );