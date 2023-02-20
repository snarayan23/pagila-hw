/*
 * Use a JOIN to count the number of English language films in each category.
 * Use table category, film_category, film, and language.
 */


SELECT C.name,COUNT(F.film_id) as sum 
FROM film as F 
INNER JOIN language as L on L.language_id = F.language_id 
INNER JOIN film_category as FC on FC.film_id = F.film_id 
INNER JOIN category as C on FC.category_id = C.category_id 
WHERE L.language_id = 1 
GROUP BY C.name 
ORDER BY C.name; 
