SELECT email
FROM staff
WHERE city ='Calgary'
AND  EXTRACT(YEAR FROM CAST(hire_date AS timestamp))= 2002;
