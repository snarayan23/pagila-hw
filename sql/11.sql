/* 
 * Use a JOIN to list the number of copies of each film in the inventory system that begins with the letter h.
 * Use tables inventory and film.
 * Order by film title alphabetically.
 */

SELECT F.film_id, F.title, COUNT(I.inventory_id) 
FROM film as F INNER JOIN inventory as I on F.film_id = I.film_id 
WHERE UPPER(F.title) LIKE UPPER('H%') 
GROUP BY F.film_id 
ORDER BY F.title DESC;
