SELECT first_name,
       last_name,
       country
FROM  client
WHERE company IS NULL
AND state IS NULL
AND phone IS NULL
AND fax IS NULL;
