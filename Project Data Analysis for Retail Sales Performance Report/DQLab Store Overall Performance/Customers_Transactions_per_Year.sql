SELECT YEAR(order_date)as years, COUNT(DISTINCT LOWER(customer)) as number_of_customer
FROM dqlab_sales_store
WHERE order_status = 'Order Finished'
GROUP BY YEAR(order_date)
ORDER BY YEAR(order_date)