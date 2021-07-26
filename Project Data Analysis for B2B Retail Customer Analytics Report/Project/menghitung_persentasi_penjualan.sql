#[Menghitung persentasi keseluruhan penjualan](https://academy.dqlab.id/main/projectcode/246/420/2104)
SELECT
	  quarter,
	  SUM(quantity) AS total_penjualan,
	  SUM(quantity*priceEach) AS revenue
FROM (
	  SELECT 
		    orderNumber, 
		    status, 
		    quantity, 
		    priceEach,
		    "1" AS quarter
	  FROM 
		    orders_1
	  UNION
	  SELECT 
		    orderNumber, 
		    status, 
		    quantity, 
		    priceEach,
		    "2" AS quarter
	  FROM 
		    orders_2
    )AS table_a

WHERE
	  status='Shipped'
GROUP BY
	  quarter;