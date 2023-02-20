/*
 * Use a JOIN to order the films by most profitable,
 * where the profit is the total amount that customer have payer for the film.
 * Use tables payment, rental, inventory, and film. 
 */

SELECT F.title, SUM(P.amount) as profit 
FROM film as F 
INNER JOIN inventory as I on F.film_id = I.film_id 
INNER JOIN rental as R on I.inventory_id = R.inventory_id 
INNER JOIN payment as P on R.rental_id = P.rental_id 
GROUP BY F.title 
ORDER BY profit DESC;

