
{{
   config(
       materialized='table',
       schema='bronze'
   ) 
}}

WITH CTE_Orders AS (
    SELECT
        * from SESSION12.SESSION12SCH.orders
)

SELECT * from CTE_Orders