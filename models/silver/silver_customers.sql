
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

SELECT customer_id,
initcap(name) as name,
age,
initcap(city) as city,
CASE WHEN age>18 THEN 'Adult'
     ELSE 'Minor' END as age_group
 from CTE_Customer