#[Total Penjualan dan Revenue pada Quarter-1 (Jan, Feb, Mar) dan Quarter-2 (Apr,Mei,Jun)](https://academy.dqlab.id/main/projectcode/246/420/2103)
SELECT 
	  SUM(quantity) AS total_penjualan, 
	  SUM(quantity*priceEach) AS revenue
FROM
	  orders_1
WHERE
	  status='Shipped';

SELECT 
	  SUM(quantity) AS total_penjualan, 
	  SUM(quantity * priceEach) AS revenue
FROM
	  orders_2
WHERE
	  status='Shipped';