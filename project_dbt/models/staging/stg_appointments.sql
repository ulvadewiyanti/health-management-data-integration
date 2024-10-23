-- models/staging/stg_appointments.sql
{{ config(
    materialized='table'  
) }}

{{ create_staging_table('appointments') }}
