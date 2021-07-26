SELECT
 DISTINCT YEAR(order_date) AS years,
 product_sub_category,
 product_category,
 SUM(sales) AS sales,
 SUM(discount_value) AS promotion_value,
 ROUND(SUM(discount_value)*100/SUM(sales),2) as  burn_rate_percentage
FROM
 dqlab_sales_store
WHERE
 order_status = 'Order Finished' and YEAR(order_date) = 2012
GROUP BY
 YEAR(order_date),
 product_sub_category,
 product_category
ORDER BY
 YEAR(order_date),
 SUM(sales) DESC;