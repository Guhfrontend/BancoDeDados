CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome_categoria VARCHAR(100) NOT NULL,
    descricao VARCHAR(255)
);

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome_produto VARCHAR(100) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    descricao VARCHAR(255),
    data_criacao DATE,
    product_id BIGINT,
    FOREIGN KEY (product_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Medicamentos', 'Medicamentos prescritos e de venda livre'),
('Suplementos', 'Vitaminas e suplementos alimentares'),
('Cuidados Pessoais', 'Produtos de higiene e cuidados pessoais'),
('Equipamentos Médicos', 'Equipamentos médicos e de assistência'),
('Beleza', 'Produtos de beleza e cosméticos');

INSERT INTO tb_produtos (nome_produto, preco, descricao, data_criacao, product_id) VALUES
('Paracetamol', 5.99, 'Analgésico e antipirético', '2024-06-01', 1),
('Vitamina C', 12.50, 'Suplemento de Vitamina C 500mg', '2024-06-05', 2),
('Shampoo Anticaspa', 19.99, 'Shampoo para tratamento de caspa', '2024-06-10', 3),
('Termômetro Digital', 25.00, 'Termômetro digital para medição de febre', '2024-06-15', 4),
('Creme Hidratante', 15.99, 'Creme hidratante para pele seca', '2024-06-20', 5),
('Ibuprofeno', 7.99, 'Analgésico e anti-inflamatório', '2024-06-25', 1),
('Ômega 3', 22.50, 'Suplemento de óleo de peixe', '2024-06-30', 2),
('Escova de Dentes', 3.99, 'Escova de dentes com cerdas macias', '2024-07-01', 3);

SELECT * FROM tb_produtos WHERE preco > 50;

UPDATE tb_produtos SET preco = 50.21 WHERE id = 3;

SELECT * FROM tb_produtos WHERE preco > 50;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5 AND 60;

SELECT * FROM tb_produtos WHERE nome_produto LIKE "%C%";

SELECT nome_produto, preco, data_criacao, tb_categorias.nome_categoria
FROM tb_produtos
INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.product_id;

SELECT nome_produto, preco, data_criacao, tb_categorias.nome_categoria
FROM tb_produtos
INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.product_id WHERE product_id = 3;