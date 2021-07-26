SELECT
DISTINCT YEAR(order_date) AS years,
 SUM(sales) AS sales,
 SUM(discount_value) AS promotion_value,
 ROUND(SUM(discount_value)*100/SUM(sales),2) as  burn_rate_percentage
FROM
 dqlab_sales_store
WHERE
 order_status = 'Order Finished'
GROUP BY
 YEAR(order_date)
ORDER BY
 YEAR(order_date);