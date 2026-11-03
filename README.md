GitHub project 

📊 E-Commerce Revenue & Customer Behavior Analysis

Project by: Tsega Yohannes Godebo

📌 Project Overview

This project analyzes e-commerce transactional data to identify high-value customers and shopping trends. As an advanced data specialist, I wrote optimized SQL queries to clean, join, and aggregate data to help business owners make data-driven decisions.

🛠️ SQL Skills Demonstrated:

• Relational Database Joining (INNER JOIN)
• Data Aggregation (SUM, COUNT)
• Advanced Filtering (GROUP BY, HAVING)
• Data Sorting (ORDER BY DESC)

💻 The SQL Query Written:


SELECT customers.customer_name, 
       COUNT(orders.order_id) AS num_OfOrders,
       SUM(orders.total_amount) AS total_spent
FROM customers 
INNER JOIN orders ON customers.customer_id = orders.customer_id
GROUP BY customers.customer_name
HAVING SUM(orders.total_amount) > 200
ORDER BY total_spent DESC;
Use code with caution.

📈 Business Insight Discovered:

By running this query, the business can automatically filter and target customers who have spent more than $200. This list allows the marketing team to launch exclusive VIP loyalty programs to maximize company revenue.
