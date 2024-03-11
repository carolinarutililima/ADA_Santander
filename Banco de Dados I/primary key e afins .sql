CREATE SCHEMA teste;

DROP TABLE ada.aluno;

CREATE TABLE ada.aluno(
	id_aluno INTEGER PRIMARY KEY,
	nome VARCHAR(30),
	curso INTEGER
);

CREATE TABLE ada.curso(
	id_curso INTEGER PRIMARY KEY,
	nome VARCHAR(30)
);

INSERT INTO ada.aluno (id_aluno, nome, curso) VALUES (1,'joao', 1), (2,'paulo', 2);
SELECT * FROM ada.aluno;

INSERT INTO ada.aluno (id_aluno, nome, curso) VALUES (1, 'Ana', 4);
-- Ué, preciso verificar toda hora a base para saber onde está o ID? 

DROP TABLE ada.aluno;

CREATE TABLE ada.aluno(
	id_aluno SERIAL PRIMARY KEY,
	nome VARCHAR(30),
	id_curso INTEGER
);

INSERT INTO ada.aluno (nome, curso) VALUES ('joao', 1), ('paulo', 2);
SELECT * FROM ada.aluno;

-- Pronto, agora o id é auto incrementável, não preciso mais verificar ele;
-- CUIDADO, se você inserir um id a força, estraga tudo;

CREATE TABLE ada.curso(
	id_curso SERIAL PRIMARY KEY,
	nome VARCHAR(30)
);

INSERT INTO ada.curso (nome) VALUES ('ciencia de dados'), ('engenharia de dados');

-- Mas e agora? Como que existem alunos com id_curso 4 ????

CREATE TABLE ada.aluno(
	id_aluno SERIAL PRIMARY KEY,
	nome VARCHAR(30),
	id_curso INTEGER,
    FOREIGN KEY (id_curso) REFERENCES ada.curso (id_curso)
);

-- Agora inserindo um aluno em um curso que não existe, perceberá um problema

-- inserimos então os devidos cursos e os alunos funcionarão;
INSERT INTO ada.curso (nome) VALUES ('ciencia de dados'), ('engenharia de dados'), 
('analise de dados'), ('arquiteto de dados');

INSERT INTO ada.aluno (nome, id_curso) VALUES ('paulo', 4);

INSERT INTO ada.aluno (nome, curso) VALUES ( 'Ana', 4);

-- E se agora eu atualizar um curso; 
UPDATE ada.curso SET id_curso = 7 WHERE nome = 'ciencia de dados';

SELECT * FROM ada.curso;

SELECT * FROM ada.aluno;
-- Deu ruim, ele me impede

-- Então acrescendo as condições de CASCADE NO UPDATE

-- agora testando com delete temos o mesmo problema
DELETE FROM ada.curso WHERE id_curso = 1;

CREATE TABLE ada.aluno(
	id_aluno SERIAL PRIMARY KEY,
	nome VARCHAR(30),
	id_curso INTEGER,
	FOREIGN KEY (id_curso) REFERENCES ada.curso (id_curso)
	ON UPDATE CASCADE
	ON DELETE CASCADE
);
