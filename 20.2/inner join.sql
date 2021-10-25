SELECT ci.city, co.country
FROM sakila.city AS ci
INNER JOIN sakila.country AS co
ON ci.country_id = co.country_id;