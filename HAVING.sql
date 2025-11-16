SELECT billing_country,
      COUNT(*)-COUNT(billing_postal_code)
      
FROM invoice
WHERE (billing_address  NOT LIKE '%Street%' AND billing_address  NOT LIKE '%Way%'
AND billing_address  NOT LIKE '%Road%') OR billing_address  NOT LIKE '%Drive%'
GROUP BY billing_country
HAVING COUNT(*)- COUNT(billing_postal_code)>10;
