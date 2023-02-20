/*
 * Use a JOIN to list each film and the number of actors who are listed for that film.
 * Use tables film and film_actor.
 */

SELECT F.title, F.film_id, COUNT(A.actor_id) AS actor_count 
FROM film as F INNER JOIN film_actor as A on F.film_id = A.film_id 
GROUP BY F.film_id 
ORDER BY actor_count, F.title, F.film_id;
