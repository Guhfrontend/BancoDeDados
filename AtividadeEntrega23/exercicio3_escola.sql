CREATE DATABASE db_escola_gugu;

USE db_escola_gugu;

CREATE TABLE tb_alunos(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    idade INT,
    sala INT,
    nota DECIMAL(3,1) NOT NULL
);

INSERT INTO tb_alunos(nome, idade, sala, nota)
VALUES ("Lucas Vasconcelos", 15, 23, 10),
("Beazinat Gonçalves", 15, 23, 9.9),
("Gustavo Ribeiro", 15, 23, 7),
("Vinicius Bueno", 19, 10, 4.1),
("Camilla Cleane", 15, 23, 10);

SELECT * FROM tb_alunos WHERE nota >= 7;

SELECT * FROM tb_alunos WHERE nota < 7;

UPDATE tb_alunos SET sala = 11, idade = 20, nota = 3.9 WHERE id = 4;

SELECT * FROM tb_alunos;