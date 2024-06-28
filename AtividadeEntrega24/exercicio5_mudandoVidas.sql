CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

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
('Materiais de Construção', 'Produtos necessários para construção e reforma de imóveis.'),
('Ferramentas', 'Ferramentas manuais e elétricas para diversas aplicações.'),
('Móveis e Decoração', 'Produtos para mobiliar e decorar ambientes.'),
('Bem-estar e Saúde', 'Produtos para promover bem-estar físico e mental.'),
('Desenvolvimento Pessoal', 'Produtos e serviços para crescimento pessoal e profissional.');

INSERT INTO tb_produtos (nome_produto, preco, descricao_produto, estoque, id_categoria) VALUES
('Cimento CP V', 25.50, 'Saco de cimento para construção civil.', 100, 1),
('Martelo de Unha', 19.90, 'Ferramenta básica para pregar e retirar pregos.', 50, 2),
('Sofá 3 Lugares', 799.90, 'Sofá confortável para sala de estar.', 20, 3),
('Tapete de Yoga', 49.90, 'Tapete antiderrapante para prática de yoga.', 75, 4),
('Livro "Desperte Seu Gigante Interior"', 39.90, 'Livro de autoajuda e desenvolvimento pessoal por Tony Robbins.', 200, 5),
('Tijolo de Cerâmica', 1.50, 'Tijolo para alvenaria estrutural.', 1000, 1),
('Parafusadeira Elétrica', 149.90, 'Ferramenta elétrica para fixação de parafusos.', 30, 2),
('Mesa de Jantar', 499.90, 'Mesa de jantar com tampo de vidro.', 10, 3),
('Esteira Ergométrica', 1999.90, 'Esteira para exercícios físicos em casa.', 5, 4),
('Curso Online de Liderança', 299.90, 'Curso para desenvolvimento de habilidades de liderança.', 50, 5),
('Areia Média', 45.00, 'Metro cúbico de areia para construção.', 80, 1),
('Serra Circular', 349.90, 'Ferramenta elétrica para cortes precisos em madeira.', 15, 2),
('Poltrona Reclinável', 899.90, 'Poltrona confortável e reclinável.', 8, 3),
('Kit de Meditação', 79.90, 'Conjunto de produtos para prática de meditação.', 60, 4),
('Sessão de Coaching', 150.00, 'Sessão individual de coaching para desenvolvimento pessoal.', 100, 5);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 100;

SELECT * FROM tb_produtos WHERE preco BETWEEN 70 AND 150;

SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';

SELECT nome_produto, preco, estoque, tb_categorias.descricao_categoria
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.id_categoria = tb_categorias.id_categoria;

SELECT nome_produto, preco, estoque, tb_categorias.descricao_categoria
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.id_categoria = tb_categorias.id_categoria
WHERE tb_produtos.id_categoria = 2;
