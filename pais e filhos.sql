DROP DATABASE IF EXISTS joins;
 
CREATE DATABASE IF NOT EXISTS joins;

USE joins;

CREATE TABLE pais (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    idade INT NOT NULL
);

INSERT INTO pais (id, nome, idade) VALUES (null, "José", 45);
INSERT INTO pais (id, nome, idade) VALUES (null, "Mario", 65);
INSERT INTO pais (id, nome, idade) VALUES (null, "Romário", 47);
INSERT INTO pais (id, nome, idade) VALUES (null, "Rodolfo", 47);
INSERT INTO pais (id, nome, idade) VALUES (null, "Manoel", 19);
INSERT INTO pais (id, nome, idade) VALUES (null, "José Marinho", 79);
INSERT INTO pais (id, nome, idade) VALUES (null, "Francisco", 54);
INSERT INTO pais (id, nome, idade) VALUES (null, "Paulo", 27);

CREATE TABLE filhos (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    idade INT NOT NULL,
    id_pai INT NULL,
    FOREIGN KEY (id_pai)
    REFERENCES pais(id)
);

INSERT INTO filhos (id, nome, idade, id_pai) VALUES (null, "Murilo", 5, null);
INSERT INTO filhos (id, nome, idade, id_pai) VALUES (null, "Ana", 15, 1);
INSERT INTO filhos (id, nome, idade, id_pai) VALUES (null, "Angela", 7, 2);
INSERT INTO filhos (id, nome, idade, id_pai) VALUES (null, "Daniela", 7, 2);
INSERT INTO filhos (id, nome, idade, id_pai) VALUES (null, "Bruno", 14, null);
INSERT INTO filhos (id, nome, idade, id_pai) VALUES (null, "Enzo", 2, 4);
INSERT INTO filhos (id, nome, idade, id_pai) VALUES (null, "Sofia", 14, null);
INSERT INTO filhos (id, nome, idade, id_pai) VALUES (null, "Heloisa", 20, 6);
INSERT INTO filhos (id, nome, idade, id_pai) VALUES (null, "Lucca", 4, 6);

SELECT filhos.idade, filhos.nome, pais.nome FROM filhos INNER JOIN pais ON filhos .id_pai = pais.id;
SELECT filhos.idade, filhos.nome, pais.nome FROM filhos LEFT JOIN pais ON filhos .id_pai = pais.id;
SELECT filhos.nome, pais.nome FROM pais INNER JOIN filhos ON filhos .id_pai = pais.id;
SELECT filhos.idade, filhos.nome FROM filhos LEFT JOIN pais ON filhos .id_pai = pais.id WHERE id_pai is null;




