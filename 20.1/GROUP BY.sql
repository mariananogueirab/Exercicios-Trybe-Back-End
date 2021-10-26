/* PRA FIXAR - GROUP BY E HAVING */
SELECT * FROM sakila.address;
/* 1 */
SELECT `active`, COUNT(*) FROM sakila.customer
GROUP BY `active`;

/* 2 */
SELECT store_id, `active`, COUNT(`active`) FROM sakila.customer
GROUP BY store_id;

/* 3 */
SELECT rating, AVG(rental_duration) AS `Média de duração` FROM sakila.film
GROUP BY rating
ORDER BY `Média de duração` DESC;

/* 4 */
SELECT district, COUNT(address) FROM sakila.address
GROUP BY district;

/* HAVING */

