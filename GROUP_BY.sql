SELECT DATE_TRUNC ('week',  CAST(invoice_date AS timestamp)),
       SUM(total),
	   COUNT(DISTINCT customer_id),
	   SUM(total)/COUNT(DISTINCT customer_id)
FROM invoice
WHERE billing_country = 'USA'
GROUP BY DATE_TRUNC ('week',  CAST(invoice_date AS timestamp));
