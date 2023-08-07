SELECT ROUND(100 * SUM(order_date = customer_pref_delivery_date) / COUNT(*), 2) as immediate_percentage
FROM Delivery;
