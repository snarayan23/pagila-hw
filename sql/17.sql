/*
 * Use a JOIN to order the countries by most profitable,
 * where the profit is the total amount that all customers from that country have payed.
 * Use tables payment, rental, customer, address, city, and country.
 * Order by country alphabetically.
 */


SELECT country.country, SUM(payment.amount) as profit from country INNER JOIN city on country.country_id = city.country_id INNER JOIN address on address.city_id = city.city_id INNER JOIN customer on address.address_id = customer.address_id INNER JOIN rental on rental.customer_id = customer.customer_id INNER JOIN payment on payment.rental_id = rental.rental_id GROUP BY country.country ORDER BY country.country;
