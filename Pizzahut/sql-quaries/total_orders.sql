-- Retriev the total num of ordered placed.

SELECT 
    COUNT(order_id) AS total_orders
FROM
    orders;