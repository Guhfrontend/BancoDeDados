CREATE DATABASE db_cursinhos_gustavo;

USE db_cursinhos_gustavo;

CREATE TABLE tb_recursos(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    curso VARCHAR(255) NOT NULL,
    data_postada DATE,
    horas DECIMAL(4,1) NOT NULL,
    preco DECIMAL(8,2) NOT NULL
);

INSERT INTO tb_recursos(curso, data_postada, horas, preco)
VALUES ("Administração", "2019-08-13", 63.1, 523.12),
("Java Completo", "2023-08-13", 104.1, 612.12),
("C# Completo", "2021-08-13", 63.1, 301.12),
("Python Completo", "2019-08-13", 5.1, 99.90),
("Banco de Dados Completo", "2019-08-13", 63.1, 500.12);

SELECT * FROM tb_recursos WHERE preco > 500;

SELECT * FROM tb_recursos WHERE preco <= 500;

UPDATE tb_recursos SET horas = 10.1, preco = 98.23 WHERE id = 4;

SELECT * FROM tb_recursos;
