
CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias(
	id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(255) NOT NULL,
    descricao_categoria TEXT
);

CREATE TABLE tb_produtos(
	id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(255) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    descricao_produto TEXT,
    estoque INT,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias (nome_categoria, descricao_categoria) VALUES
('Carnes Bovinas', 'Carnes provenientes de bovinos.'),
('Carnes Suínas', 'Carnes provenientes de suínos.'),
('Carnes de Aves', 'Carnes provenientes de aves.'),
('Carnes Ovinas', 'Carnes provenientes de ovinos.'),
('Carnes Exóticas', 'Carnes de animais não convencionais.');

INSERT INTO tb_produtos (nome_produto, preco, descricao_produto, estoque, id_categoria) VALUES
('Picanha Bovina', 59.90, 'Corte nobre de carne bovina, muito suculenta.', 30, 1),
('Costelinha Suína', 29.90, 'Carne suína com osso, ideal para churrasco.', 50, 2),
('Filé de Frango', 15.90, 'Peito de frango desossado e sem pele.', 100, 3),
('Pernil de Cordeiro', 79.90, 'Carne ovina macia e saborosa.', 20, 4),
('Carne de Javali', 99.90, 'Carne exótica de javali, muito saborosa.', 10, 5),
('Alcatra Bovina', 49.90, 'Corte macio e suculento de carne bovina.', 40, 1),
('Lombo Suíno', 34.90, 'Corte magro de carne suína, ideal para assados.', 35, 2),
('Coxa de Frango', 12.90, 'Corte de frango ideal para assar ou fritar.', 75, 3),
('Carré de Cordeiro', 89.90, 'Corte nobre de carne ovina, muito macio.', 15, 4);

SELECT * FROM tb_produtos WHERE preco > 50;

SELECT * FROM tb_produtos WHERE preco BETWEEN 50 AND 150;

SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';

SELECT nome_produto, preco, estoque, tb_categorias.nome_categoria 
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_categorias.id_categoria = tb_produtos.id_categoria;

SELECT nome_produto, preco, estoque, tb_categorias.nome_categoria 
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_categorias.id_categoria = tb_produtos.id_categoria
WHERE tb_produtos.id_categoria = 2;
