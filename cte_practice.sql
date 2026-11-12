With customer_totals AS (SELECT cust_id, sum(totalamount) AS total_spent 
                         FROM orders 
                         GROUP BY cust_id)
SELECT *
FROM customer_totals 
WHERE total_spent > 200;
