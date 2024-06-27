CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(255),
    classe VARCHAR(255)
);

CREATE TABLE tb_personagens(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    vida INT,
    poder INT,
    forca INT,
    defesa INT,
    person_id BIGINT,
    FOREIGN KEY (person_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes(descricao, classe)
VALUES("personagem principal", "classe Elfo"),
	("personagem secundário", "classe Ogro"),
	("personagem coadjuvante", "classe mago"),
    ("personagem principal", "classe bardo"),
    ("personagem secundário", "classe paladino");
    

INSERT INTO tb_personagens(nome, vida, poder, forca, defesa, person_id)
VALUES("Vigilante", 2000, 1300, 800, 1100, 1),
("Alphaville", 2200, 1500, 100, 11000, 5),
("Trovao", 4000, 100, 6000, 2000, 2),
("Trovoada", 4100, 80, 800, 2200, 2),
("Vagalume", 2000, 6000, 10, 67, 3),
("Thor", 6000, 4300, 800, 1100, 4),
("Braum", 2000, 1300, 800, 1100, 5),
("Shaco", 2000, 1300, 800, 1100, 3);

SELECT * FROM tb_personagens;

SELECT * FROM tb_classes;

SELECT * FROM tb_personagens WHERE poder > 2000;

SELECT * FROM tb_personagens WHERE poder BETWEEN 1000 AND 2000;

SELECT id, nome FROM tb_personagens WHERE nome LIKE "%C%";

SELECT nome, vida, poder, forca, defesa, tb_classes.descricao FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.person_id = tb_classes.id;

SELECT nome, vida, poder, forca, defesa, tb_classes.descricao
FROM tb_personagens
INNER JOIN tb_classes 
ON tb_personagens.person_id = tb_classes.id 
WHERE tb_personagens.person_id = 2;



