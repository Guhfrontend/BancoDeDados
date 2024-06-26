CREATE DATABASE db_quitanda;

-- usar o banco de dados
USE db_quitanda;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    quantidade INT,
    data_validade DATE,
    preco DECIMAL NOT NULL
    );
    
INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("tomate", 100, "2023-12-15", 8.00),
("Maçã", 20, "2023-12-15", 5.00),
("Laranja", 50, "2023-12-15", 10.00),
("Banana", 200, "2023-12-15", 12.00),
("Uva", 1200, "2023-12-15", 30.00),
("Pêra", 500, "2023-12-15", 2.99);

SELECT * FROM tb_produtos WHERE id = 2;

UPDATE tb_produtos SET preco = 2.99 WHERE id = 6;

SELECT * FROM tb_produtos;



