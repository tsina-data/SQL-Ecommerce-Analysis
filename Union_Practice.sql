ELECT customer_name, city
FROM online_customers
UNION
SELECT customer_name, city
FROM store_customers
