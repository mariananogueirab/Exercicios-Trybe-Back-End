/* PRA FIXAR - FUNÇÕES MATEMÁTICAS */

/* 1 */
SET @num = 4;
SELECT IF(@num MOD 2 = 0, 'PAR', 'ÍMPAR') AS `PAR OU ÍMPAR`;

/* 2 e 3 */
SET @num_lugares = 200;
SELECT @num_lugares DIV 12 AS `GRUPOS`, @num_lugares MOD 12 AS `LUGARES SOBRANDO`;

/* 3 */
SELECT @num_lugares MOD 12 AS `LUGARES SOBRANDO`;
