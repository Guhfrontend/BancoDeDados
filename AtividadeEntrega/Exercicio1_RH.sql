CREATE DATABASE db_recursos_humanos;

USE db_recursos_humanos;

CREATE TABLE tb_recursos(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    data_entrada DATE,
    cargo VARCHAR(255),
    salario DECIMAL(8,2) NOT NULL
);

INSERT INTO tb_recursos(nome, data_entrada, cargo, salario)
VALUES ("Lucas Vasconcelos", "2024-08-13", "Sênior-Engenharia de software", 15213.81),
("Vinicius Bueno", "2024-08-13", "Estágio-Engenharia de software", 1800.00),
("Beazinat Gonçalves", "2024-08-13", "Estágio-Analista de Dados", 1992.83),
("Gustavo Ribeiro", "2024-08-13", "Pleno-Engenharia de software", 10821.13),
("Camilla Cleane", "2024-08-13", "Junior-Engenharia de software", 4121.81);

SELECT * FROM tb_recursos WHERE salario > 2000;

SELECT * FROM tb_recursos WHERE salario <= 2000;

UPDATE tb_recursos SET cargo = "Junior- Analista de Dados", salario = 4233.16 WHERE id = 3;

SELECT * FROM tb_recursos;


