SELECT billing_country
FROM (SELECT billing_country,
             EXTRACT(MONTH FROM CAST(invoice_date AS date)) AS month_of_invoice,
	           AVG(total) AS avg_total
      FROM invoice
      WHERE EXTRACT(YEAR FROM CAST(invoice_date AS date)) = 2009
      GROUP BY billing_country, month_of_invoice) AS new
WHERE month_of_invoice IN (2, 5, 7, 10)
GROUP BY billing_country
HAVING SUM(avg_total) > 10;
