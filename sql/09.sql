/*
 * Use a JOIN to display the total amount rung up by each staff member in January of 2020.
 * Use tables staff and payment.
 */


SELECT S.first_name, S.last_name, SUM(P.amount) from payment_p2020_01 as P INNER JOIN staff as S on P.staff_id =S.staff_id GROUP BY S.staff_id;
