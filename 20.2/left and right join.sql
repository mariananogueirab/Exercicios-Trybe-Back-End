SELECT * FROM sakila.actor; /* 200 retornos */
SELECT * FROM sakila.customer; /* 599 de retorno */

SELECT c.customer_id, c.first_name, a.actor_id
FROM sakila.customer AS c
LEFT JOIN sakila.actor AS a
ON c.last_name = a.last_name; /* retorno de 620, tem last_name que tem mais de um id */

SELECT c.customer_id, c.first_name, a.actor_id
FROM sakila.customer AS c
RIGHT JOIN sakila.actor AS a
ON c.last_name = a.last_name; /* retorno de 200 */

