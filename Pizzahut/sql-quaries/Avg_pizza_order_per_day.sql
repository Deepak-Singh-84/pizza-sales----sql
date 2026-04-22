-- group the orders by the date abd calculate the average num of pizzas ordered perday.

SELECT 
    ROUND(AVG(quantity), 0) as avg_pizza_order_per_day
FROM
    (SELECT 
        orders.order_date, SUM(orders_details.quantity) AS quantity
    FROM
        orders
    JOIN orders_details ON orders.order_id = orders_details.order_id
    GROUP BY orders.order_date) AS order_quantity;