SELECT Customers.cust_name, SUM(orders.totalAmount) AS total_spent, 
		RANK() OVER (ORDER BY SUM(orders.totalAmount) DESC) AS customer_rank
FROM Customers
INNER JOIN orders ON Customers.cust_id = orders.cust_id
GROUP BY Customers.cust_name;
