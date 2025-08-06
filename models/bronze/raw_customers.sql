

WITH CTE_Customer AS (
    SELECT
        * from SESSION12.SESSION12SCH.customers
)

{% if var('run_mode','incremental')=='initial' %}

{{
   config(
       materialized='table',
       schema='bronze'
   ) 
}}
SELECT * from CTE_Customer
{% else %}

{{
   config(
       materialized='incremental',
       schema='bronze'
   ) 
}}
SELECT * from CTE_Customer where customer_id > (select max(customer_id) from 
SESSION12.BRONZE.raw_customers)

{% endif %}