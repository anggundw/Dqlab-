SELECT year(order_date) as years, product_sub_category, sum(sales) as sales
FROM dqlab_sales_store
WHERE order_status='order finished' AND YEAR(order_date) IN("2011","2012")
GROUP BY product_sub_category, years
ORDER BY years, sum(sales) desc