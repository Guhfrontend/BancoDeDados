CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
	id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(255) NOT NULL,
    descricao_categoria VARCHAR(255)
);

CREATE TABLE tb_cursos(
	id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nome_curso VARCHAR(255) NOT NULL,
    descricao_curso TEXT,
    preco DECIMAL(10, 2) NOT NULL,
    duracao_horas INT NOT NULL,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias (nome_categoria, descricao_categoria) VALUES
('Desenvolvimento Pessoal', 'Cursos para crescimento pessoal e autoconhecimento.'),
('Desenvolvimento Profissional', 'Cursos para aprimoramento de habilidades profissionais.'),
('Saúde e Bem-estar', 'Cursos focados em saúde física e mental.'),
('Tecnologia', 'Cursos relacionados à tecnologia e informática.'),
('Artes e Criatividade', 'Cursos para desenvolvimento de habilidades artísticas e criativas.');

INSERT INTO tb_cursos (nome_curso, descricao_curso, preco, duracao_horas, id_categoria) VALUES
('Curso de Inteligência Emocional', 'Aprenda a gerenciar suas emoções e melhorar sua qualidade de vida.', 199.90, 20, 1),
('Curso de Liderança', 'Desenvolva habilidades de liderança e gestão de equipes.', 299.90, 30, 2),
('Curso de Meditação e Mindfulness', 'Técnicas de meditação para reduzir o estresse e aumentar o bem-estar.', 99.90, 15, 3),
('Curso de Programação em Python', 'Aprenda a programar em Python do zero ao avançado.', 399.90, 40, 4),
('Curso de Pintura em Tela', 'Desenvolva suas habilidades artísticas com técnicas de pintura em tela.', 149.90, 25, 5),
('Curso de Comunicação Eficaz', 'Melhore suas habilidades de comunicação e oratória.', 249.90, 18, 2),
('Curso de Nutrição e Saúde', 'Aprenda sobre alimentação saudável e bem-estar.', 199.90, 22, 3),
('Curso de Desenvolvimento Web', 'Crie sites e aplicações web modernas e responsivas.', 349.90, 35, 4),
('Curso de Fotografia', 'Domine técnicas de fotografia e edição de imagens.', 199.90, 28, 5),
('Curso de Autoestima e Autoconfiança', 'Melhore sua autoestima e desenvolva autoconfiança.', 179.90, 20, 1);

SELECT * FROM tb_cursos;

UPDATE tb_cursos SET preco = 501.23 WHERE id_curso = 8;

SELECT * FROM tb_cursos WHERE preco > 500;

SELECT * FROM tb_cursos WHERE preco BETWEEN 220 AND 1000;

SELECT * FROM tb_cursos WHERE nome_curso LIKE '%J%';

SELECT * FROM tb_cursos WHERE nome_curso LIKE '%C%';

SELECT nome_curso, preco, duracao_horas, tb_categorias.descricao_categoria
FROM tb_cursos INNER JOIN tb_categorias
ON tb_categorias.id_categoria = tb_cursos.id_categoria; 

SELECT nome_curso, preco, duracao_horas, tb_categorias.descricao_categoria
FROM tb_cursos INNER JOIN tb_categorias
ON tb_categorias.id_categoria = tb_cursos.id_categoria
WHERE tb_cursos.id_categoria = 2; 
