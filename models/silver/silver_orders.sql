
{{
   config(
       materialized='table',
       schema='silver'
   ) 
}}

WITH CTE_Orders AS (
    SELECT
        * from SESSION12.BRONZE.raw_orders
)

SELECT order_id,
customer_id,
try_to_date(order_date) as order_date,
amount
 from CTE_Orders