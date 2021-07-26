#[Apakah jumlah customers xyz.com semakin bertambah?](https://academy.dqlab.id/main/projectcode/246/421/2106)
SELECT 
	  quarter,
	  COUNT(DISTINCT customerID) AS total_customers
FROM
	  (
	  SELECT
	 	    customerID, 
	 	    createDate,
	 	    QUARTER(createDate) AS quarter
	  FROM 
	 	    customer
	  WHERE 
 		    createDate BETWEEN "2004-01-01" AND "2004-06-30"
	 ) AS tabel_b
GROUP BY
	quarter;