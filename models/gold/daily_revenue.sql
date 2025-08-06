
{{
   config(
       materialized='table',
       schema='gold'
   ) 
}}

WITH CTE_Revenue AS (
    SELECT
        * from SESSION12.SILVER.SILVER_ORDERS
)

SELECT 
order_date,
SUM(amount) as total_revenue
FROM CTE_Revenue
GROUP BY order_date