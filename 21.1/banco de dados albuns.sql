CREATE DATABASE IF NOT EXISTS albuns;
USE albuns;

CREATE TABLE artista(
	artista_id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100)
);

CREATE TABLE estiloMusical(
	estilo_id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL
);

CREATE TABLE album(
	album_id INT PRIMARY KEY AUTO_INCREMENT,
    artista_id INT NOT NULL,
    titulo VARCHAR(100) NOT NULL,
    preco DOUBLE NOT NULL,
    estilo_id INT NOT NULL,
    FOREIGN KEY (artista_id) REFERENCES artista(artista_id),
    FOREIGN KEY (estilo_id) REFERENCES estiloMusical(estilo_id)
);