#Menghitung total unik customers yang transaksi di quarter_1
SELECT COUNT(DISTINCT customerID) as total_customers FROM orders_1;
#output = 25
SELECT 
	  "1" AS quarter,
	  (COUNT(DISTINCT customerID)*100/25) AS q2
FROM
	  orders_1
WHERE
	  customerID IN 
      (SELECT DISTINCT customerID
	  FROM orders_2);