
CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    pizza_tipo VARCHAR(255),
	tamanho VARCHAR(255)
);

CREATE TABLE tb_pizzas(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    sabor VARCHAR(255),
    preco DECIMAL(5,2),
    tempo_preparo INT,
    calorias INT,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(pizza_tipo, tamanho)
VALUES("Pizza doce","Grande"),
("Pizza doce","Pequena"),
("Pizza salgada","Grande"),
("Pizza salgada","Pequena"),
("Pizza vegetariana", "Grande"),
("Pizza vegetariana", "Pequena");

INSERT INTO tb_pizzas(sabor, preco, tempo_preparo, calorias, categoria_id)
VALUES ("Portuguesa", 50.25, 25, 1200, 3),
("Mussarela", 49.50, 25, 1000, 3),
("Brocolis", 51.25, 25, 800, 5),
("Brigadeiro", 40.25, 25, 1000, 1),
("Morango", 26.25, 25, 1000, 2),
("Calabresa", 44.99, 25, 1100, 4),
("Lombo", 50.25, 25, 1000, 3),
("Milho", 50.25, 25, 1000, 6);

SELECT * FROM tb_pizzas;
SELECT * FROM tb_categorias;

SELECT * FROM tb_pizzas WHERE preco > 45;

UPDATE tb_pizzas SET preco = 26.30 WHERE id = 8;

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;

INSERT INTO tb_pizzas(sabor, preco, tempo_preparo, calorias, categoria_id)
VALUES ("Folhas de ouro", 99.99, 40, 1900, 1);

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE sabor LIKE "%M%";

SELECT sabor,preco,tempo_preparo, tb_categorias.pizza_tipo, tb_categorias.tamanho
FROM tb_pizzas
INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id;

SELECT sabor,preco,tempo_preparo, tb_categorias.pizza_tipo, tb_categorias.tamanho
FROM tb_pizzas
INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id
WHERE tb_pizzas.categoria_id = 3
