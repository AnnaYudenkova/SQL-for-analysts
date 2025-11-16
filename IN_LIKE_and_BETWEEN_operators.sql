SELECT name
FROM track
WHERE (milliseconds>300000
AND composer LIKE '%Bono%'
AND genre_id IN (
    7,
    8,
    9,
    10))
OR bytes >1000000000 ;
