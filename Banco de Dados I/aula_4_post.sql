DROP SCHEMA ada CASCADE;

CREATE SCHEMA ada;

CREATE TABLE ada.tabela_1 (
	nome VARCHAR(30),
	idade INTEGER
)

SELECT * FROM ada.tabela_1;

INSERT INTO ada.tabela_1 values('arua', 33);

INSERT INTO ada.tabela_1(idade) values (25)

INSERT INTO ada.tabela_1 values('Hugo', '26');

INSERT INTO ada.tabela_1 values('Hugo', 'teste');

INSERT INTO ada.tabela_1 values('Hugo', 26.3);


CREATE TABLE ada.curso(
	nome VARCHAR(20),
	carga_horaria INTEGER
)


INSERT INTO ada.curso values('MATEMATICA', 33);

INSERT INTO ada.curso values('FILOSOFIA', 26.3);

INSERT INTO ada.curso values('HISTORIA', 26.3);

SELECT * FROM ada.curso;


UPDATE ada.curso SET nome = 'Geografia' WHERE carga_horaria = 33;

UPDATE ada.curso SET nome = 'direicho';

DELETE FROM ada.curso where carga_horaria=26;

SELECT * FROM ada.curso where carga_horaria=26;