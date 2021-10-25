SELECT first_name, last_name FROM sakila.actor; /* 200 linhas */
SELECT first_name, last_name FROM sakila.customer; /* 599 linhas */

/* Pra juntar as duas */
SELECT first_name, last_name FROM sakila.actor
UNION /* REMOVE OS VALORES DUPLICADOS */
SELECT first_name, last_name FROM sakila.customer; /* 797 linhas */

SELECT first_name, last_name FROM sakila.actor
UNION ALL /* NÃO REMOVE OS VALORES DUPLICADOS */
SELECT first_name, last_name FROM sakila.customer; /* 799 linhas */