 /*
 * Use a JOIN to list all films in the "Family" category.
 * Use table category, film_category, and film.
 */

SELECT F.title as title 
FROM film as F
INNER JOIN film_category as FC on FC.film_id = F.film_id 
INNER JOIN category as C on C.category_id = FC.category_id
WHERE C.name = 'Family'
ORDER BY title; 


