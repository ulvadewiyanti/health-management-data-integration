-- models/staging/stg_billings.sql
{{ config(
    materialized='table'  
) }}

{{ create_staging_table('invoices') }}
