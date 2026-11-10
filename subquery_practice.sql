SELECT order_id, customer_id, total_amount
FROM orders
WHERE total_amount >(SELECT total_amount FROM orders WHERE customer_id = 3);
