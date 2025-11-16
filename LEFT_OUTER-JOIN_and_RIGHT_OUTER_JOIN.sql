SELECT a.name
FROM artist AS a
LEFT OUTER JOIN album AS al ON a.artist_id = al.artist_id
WHERE album_id IS NULL;
