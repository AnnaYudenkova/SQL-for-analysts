--Срез данных + логические операторы
SELECT billing_address,
       billing_city
FROM invoice
WHERE CAST (invoice_date AS date) >='2009-09-01'
AND CAST (invoice_date AS date) <='2009-09-30'
AND  (NOT billing_country ='USA'
AND  NOT billing_country ='Brazil')
AND total>2 ;
