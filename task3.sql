SELECT Categories.category_name, SUM(Order_Items.quantity * Order_Items.unit_price) AS total_revenue
FROM Order_Items
INNER JOIN Products ON Order_Items.Product_ID = Products.Product_ID
INNER JOIN Categories ON Products.Category_ID = Categories.Category_ID
GROUP BY Categories.Category_ID
ORDER BY total_revenue DESC;
