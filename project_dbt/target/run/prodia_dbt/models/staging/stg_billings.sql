
  
    

  create  table
    `prodia_test`.`stg_billings__dbt_tmp`
    
    
      as
    
    (
      -- models/staging/stg_billings.sql



    select *
    from `prodia_test`.`billings`

    )

  