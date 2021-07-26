SELECT year(order_date) as years, sum(sales) as sales, COUNT(order_id) as number_of_order
FROM dqlab_sales_store
WHERE order_status='Order Finished'
GROUP BY year(order_date)