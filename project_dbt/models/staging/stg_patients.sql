-- models/staging/stg_patients.sql
{{ config(
    materialized='table'  
) }}

{{ create_staging_table('patients') }}
