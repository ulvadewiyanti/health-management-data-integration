-- models/staging/my_table.sql

with source_data as (

    select *
    from "prodia_test"."prodia_test"."patients"

)

select *
from source_data