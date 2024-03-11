CREATE SCHEMA ada;

CREATE TABLE ada.cidades (
    id_cidade SERIAL PRIMARY KEY,
    cidade VARCHAR(100), 
    estado CHAR(2)
);

CREATE TABLE ada.alunos (
    id_aluno SERIAL PRIMARY KEY, 
    id_cidade INTEGER,
    cpf CHAR(11), 
    primeiro_nome VARCHAR(100), 
    ultimo_nome VARCHAR(100), 
    data_ingresso DATE, 
    endereco VARCHAR(100), 
    numero INTEGER, 
    telefone_a VARCHAR(10), 
    telefone_b VARCHAR(10),
    FOREIGN KEY (id_cidade) REFERENCES ada.cidades (id_cidade)
);

CREATE TABLE ada.cursos (
    id_curso SERIAL PRIMARY KEY,
    curso VARCHAR(20), 
    valor_curso FLOAT
);

CREATE TABLE ada.pagamentos (
    id_pagamento SERIAL PRIMARY KEY,
    pagamento VARCHAR(10)
);

CREATE TABLE ada.vendedores (
    id_vendedor SERIAL PRIMARY KEY, 
    vendedor VARCHAR(50)
);

CREATE TABLE ada.transacoes (
    id_transacao SERIAL PRIMARY KEY, 
    id_aluno INTEGER, 
    id_curso INTEGER, 
    id_vendedor INTEGER, 
    id_pagamento INTEGER,
    FOREIGN KEY (id_aluno) REFERENCES ada.alunos (id_aluno),
    FOREIGN KEY (id_curso) REFERENCES ada.cursos (id_curso), 
    FOREIGN KEY (id_vendedor) REFERENCES ada.vendedores (id_vendedor), 
    FOREIGN KEY (id_pagamento) REFERENCES ada.pagamentos (id_pagamento)
);

INSERT INTO ada.cursos (curso, valor_curso) VALUES ('engenharia dados', 60)
, ('ciencia dados', 70)
, ('analise dados', 50)
, ('arquiteto dados', 80);

INSERT INTO ada.pagamentos (pagamento) VALUES ('a vista')
, ('credito')
, ('pix')
, ('carnê')
, ('crediário');

INSERT INTO ada.cidades (cidade, estado) VALUES ('curitiba', 'PR')
, ('sao paulo', 'SP')
, ('salvador', 'BA')
, ('jequié', 'BA')
, ('tiradentes', 'mg')
, ('uberlandia', 'MG')
, ('congonhas', 'MG')
, ('porto velho', 'RO')
, ('jaru', 'RO')
, ('alto paraíso', 'RO')
, ('ouro preto', 'MG');

INSERT INTO ada.vendedores (vendedor) VALUES ('paulo')
, ('adriana')
, ('nadir');

INSERT INTO ada.alunos (cpf, primeiro_nome, ultimo_nome, data_ingresso, id_cidade, endereco, numero, telefone_a, telefone_b) VALUES ('68740550196', 'abelar', 'henrique', '2023-03-05', 1, 'Rua da Penha', 3300, '866862753', '274845545')
, ('34146481132', 'adriano', 'gambetta', '2023-03-06', 1, 'Rua Henrique Soares', 7118, '273807947', '0')
, ('12728282203', 'alex', 'moulin', '2023-03-07', 1, 'Rua Leodécio Santiago de Souza', 6082, '872235320', '911955261')
, ('43764914607', 'álvaro', 'fonseca', '2023-03-08', 1, 'Rua Pitica', 7924, '938535574', '262020598')
, ('23228327392', 'andre', 'melchior', '2023-03-09', 2, 'Rua Camilo Paula', 4160, '189494206', '323561018')
, ('76360071693', 'antonio', 'zanutto', '2023-03-10', 2, '1ª Travessa São Francisco', 8932, '379611062', '919134470')
, ('66346021768', 'carolina', 'yumi', '2023-03-11', 2, 'Quadra SHPS Quadra 603 Conjunto 96A', 5733, '422505705', '0')
, ('05494797137', 'christyan', 'costa', '2023-03-12', 2, 'Quadra 504 Sul Alameda 11', 8070, '845459713', '615675266')
, ('19363011240', 'claudia', 'cavalcante', '2023-03-13', 3, 'Rua Em Projeto M', 8833, '202878321', '603379305')
, ('05990749922', 'cristiane', 'nunes', '2023-03-14', 3, 'Travessa Júlio Veiga Mendes', 9279, '708729599', '0')
, ('51271170337', 'danilo', 'nozima', '2023-03-15', 3, 'Rua dois', 3556, '374388553', '328960508')
, ('18959848666', 'diego', 'rodrigues', '2023-03-16', 3, 'Rua três ', 1433, '470084815', '443097717')
, ('07562543599', 'emanuelle', 'lemos', '2023-03-17', 4, 'Rua principal ', 4977, '326789195', '0')
, ('76429831566', 'gabriel', 'mourão', '2023-03-18', 4, 'Rua São josé', 4900, '478176185', '573145168')
, ('91204465504', 'haroldo', 'silva', '2023-03-19', 4, 'Rua santo antonio', 6988, '576548312', '301677712')
, ('32755896447', 'henrique', 'guerrero', '2023-03-20', 1, 'Avenida brasil', 8529, '639795496', '0')
, ('64634936082', 'hevans', 'pereira', '2023-03-21', 1, 'Avenida Brasil', 4540, '263674118', '384972402')
, ('55207096189', 'joão', 'bueno', '2023-03-22', 1, 'Avenida Brasilia', 1185, '740040561', '230351268')
, ('02456915690', 'kelvin', 'pichinini', '2023-03-23', 1, 'Rua são paulo', 9470, '538617705', '0')
, ('51865906231', 'lucas', 'voltolini', '2023-03-24', 5, 'Rua são paulo ', 3800, '613900746', '909322964')
, ('20671422357', 'luis', 'delgado', '2023-03-25', 6, 'Rua teobaldo', 9317, '789048901', '885432495')
, ('87486965183', 'manuel', 'castro', '2023-03-26', 6, 'rua kletemberg', 582, '400549536', '7115358')
, ('46927680338', 'marcio', 'magrini', '2023-03-27', 7, 'rua barão tinta branca', 239, '466204695', '23079842')
, ('17412432561', 'michel', 'souza', '2023-03-28', 7, 'tua baraão tinha uva', 8347, '827235134', '314861183')
, ('18167196135', 'mike', 'pessanha', '2023-03-29', 7, 'rua quinze', 8463, '105333699', '168590669')
, ('45506365798', 'pedro', 'ribeiro', '2023-03-30', 8, 'rua são francisco ', 6572, '819037434', '0')
, ('11423428746', 'pedro', 'marques', '2023-03-31', 8, 'rua sete de setembro ', 4218, '730517155', '0')
, ('93775321419', 'rafael', 'ribeiro', '2023-04-01', 8, 'rua 5 de março ', 6945, '238525722', '0')
, ('39906836380', 'raphael', 'morgado', '2023-04-02', 9, 'rua 3 de abril ', 9971, '451487680', '136366233')
, ('71047684176', 'renato', 'massamitsu', '2023-04-03', 9, 'rua São chico rico ', 2916, '982133571', '809927358')
, ('80872347461', 'roulien', 'roland', '2023-04-04', 10, 'rua de são tadeu ', 6885, '239426075', '0')
, ('20499652769', 'thaís', 'falcão ', '2023-04-05', 10, 'avenida do sucesso ', 2050, '169539037', '994288632')
, ('63536060421', 'vitor', 'cavalcanti', '2023-04-06', 11, 'travessa da maria mariana ', 6609, '587521150', '54414341')
, ('43318780907', 'william', 'james', '2023-04-07', 11, 'rua da alegria', 4573, '535403160', '596292484');

INSERT INTO ada.transacoes (id_aluno, id_curso, id_vendedor, id_pagamento) VALUES (1, 1, 1, 1)
, (2, 1, 2, 2)
, (3, 1, 1, 2)
, (4, 1, 2, 1)
, (5, 1, 1, 3)
, (6, 1, 1, 3)
, (7, 1, 2, 1)
, (8, 1, 2, 1)
, (9, 2, 1, 4)
, (10, 2, 2, 4)
, (11, 2, 2, 2)
, (12, 2, 2, 1)
, (13, 2, 2, 1)
, (14, 2, 1, 1)
, (15, 2, 1, 5)
, (16, 2, 1, 2)
, (17, 2, 1, 2)
, (18, 2, 3, 3)
, (19, 2, 3, 5)
, (20, 2, 3, 3)
, (21, 2, 1, 1)
, (22, 3, 3, 5)
, (23, 3, 3, 5)
, (24, 3, 3, 4)
, (25, 3, 3, 4)
, (26, 3, 1, 5)
, (27, 3, 1, 2)
, (28, 3, 1, 2)
, (29, 3, 1, 5)
, (30, 4, 2, 5)
, (31, 4, 2, 2)
, (32, 4, 2, 2)
, (33, 4, 2, 2)
, (34, 4, 2, 5);

SELECT * FROM ada.alunos;