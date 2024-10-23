-- macros/create_staging_table.sql

{% macro create_staging_table(source_table_name) %}
    select *
    from {{ source('postgresql', source_table_name) }}
{% endmacro %}
