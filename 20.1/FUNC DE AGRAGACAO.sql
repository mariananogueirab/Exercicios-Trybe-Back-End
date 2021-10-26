/* PRA FIXAR - FUNC DE AGRAGAÇÃO */

SELECT AVG(rental_duration) AS `Média de Duração`,
MIN(rental_duration) AS `Duração Mínima`,
MAX(rental_duration) AS `Duração Máxima`,
SUM(rental_duration) AS `Tempo de Exibição Total`,
COUNT(title) AS `Filmes Registrados`
FROM sakila.film;

SELECT * FROM sakila.film;