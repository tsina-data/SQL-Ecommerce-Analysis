SELECT customers.customer_name, SUM(orders.total_amount) AS total_spent,
      CASE
          WHEN SUM(orders.total_amount)> 250 THEN 'Platinum'
          WHEN SUM(orders.total_amount)<=250 AND SUM(orders.total_amount)>= 100 THEN 'Gold'
          ELSE 'Silver'
      END AS customer_tier
FROM customers
INNER JOIN orders ON customers.customer_id = orders.customer_id
GROUP BY customers.customer_name
ORDER BY total_spent DESC;
