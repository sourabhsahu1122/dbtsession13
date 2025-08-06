{% snapshot customer_snapshot %}
{{

    config(
        target_schema='bronze',
        unique_key='customer_id',
        strategy='check',
        check_cols=['name', 'age', 'city']
    )
}}
SELECT * from SESSION12.BRONZE.raw_customers
{% endsnapshot %}