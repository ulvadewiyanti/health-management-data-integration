-- models/staging/stg_doctors.sql
{{ config(
    materialized='table'  
) }}

{{ create_staging_table('doctors') }}
