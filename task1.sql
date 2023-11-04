SELECT c.Customer_ID, c.Customer_Name, c.Customer_Email, c.Customer_Location, COUNT(o.Order_ID) AS total_orders
FROM Customers c
LEFT JOIN Orders o ON c.Customer_ID = o.Customer_ID
GROUP BY c.Customer_ID
ORDER BY total_orders DESC;