/*
 * The music of Queen and Kris Kristofferson have seen an unlikely resurgence.
 * As an unintended consequence, films starting with the letters K and Q have also soared in popularity.
 * Use a JOIN to display the titles of movies starting with the letters K and Q whose language is English.
 * Use tables film and language, and order the results alphabetically by film title.
 */

SELECT F.film_id, F.title, L.language_id, L.name 
FROM film as F INNER JOIN language as L on F.language_id = L.language_id 
WHERE UPPER(F.title) LIKE UPPER('K%') OR UPPER(F.TITLE) LIKE UPPER('Q%') 
ORDER BY F.title;
