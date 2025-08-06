
{{
   config(
       materialized='table',
       schema='silver'
   ) 
}}

WITH CTE_Customer AS (
    SELECT
        * from SESSION12.BRONZE.raw_customers
)

SELECT * from CTE_Customer