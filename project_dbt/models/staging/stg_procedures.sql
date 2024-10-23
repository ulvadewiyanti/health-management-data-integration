-- models/staging/stg_procedures.sql
{{ config(
    materialized='table'  
) }}

{{ create_staging_table('procedures') }}
