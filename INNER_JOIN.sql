SELECT DISTINCT c.name
FROM category AS c
INNER JOIN film_category AS fc ON c.category_id = fc.category_id
INNER JOIN movie AS m ON fc.film_id = m.film_id
INNER JOIN film_actor AS fa ON m.film_id = fa.film_id
INNER JOIN actor AS a ON fa.actor_id = a.actor_id
WHERE a.first_name = 'Uma' AND a.last_name = 'Wood'
