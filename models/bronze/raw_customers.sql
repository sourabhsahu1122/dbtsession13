
{{
   config(
       materialized='table',
       schema='bronze'
   ) 
}}

WITH CTE_Customer AS (
    SELECT
        * from SESSION12.SESSION12SCH.customers
)

SELECT * from CTE_Customer