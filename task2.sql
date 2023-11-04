SELECT p.Product_Name AS product_name, oi.quantity, oi.quantity * oi.unit_price AS total_amount
FROM Order_Items oi
INNER JOIN Product p ON oi.Product_ID = p.Product_ID
ORDER BY oi.Order_ID ASC;