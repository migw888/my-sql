DROP DATABASE IF EXISTS empresa;

CREATE DATABASE empresa;

USE empresa;

CREATE TABLE departamento (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    ramal INT NOT NULL,
    observacao VARCHAR(1000)
);

CREATE TABLE funcionario (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    cpf VARCHAR(15) NOT NULL UNIQUE,
	telefones VARCHAR(100) NOT NULL,
    endereco VARCHAR(100) NOT NULL,
    sexo CHAR(1) DEFAULT 'F',
    id_departamento INT,
    
    FOREIGN KEY (id_departamento)
    REFERENCES departamento(id)
);

INSERT INTO departamento (id, nome, ramal, observacao) VALUES (null, "TI", 123, "Um setor extremante legal!!!");
INSERT INTO departamento (id, nome, ramal, observacao) VALUES (null, "ADM", 143, NULL);
INSERT INTO departamento (id, nome, ramal, observacao) VALUES (null, "Ciencias Contabeis", 189, "só pra nerd");

SELECT * FROM departamento;
SELECT id, ramal FROM departamento;
SELECT * FROM funcionario;

SELECT * FROM funcionario WHERE nome = "Miguel";

SELECT * FROM funcionario WHERE nome LIKE 'm%';

DELETE FROM funcionario WHERE id = 1;


INSERT INTO funcionario (id, nome, cpf, telefones, endereco, sexo, id_departamento) 
VALUES (null, "Florisvaldo", "48754920045", "45454545, 12121212", "Rua Dois, 54, Bairro tal", "M", 1);

INSERT INTO funcionario (id, nome, cpf, telefones, endereco, sexo, id_departamento) 
VALUES (null, "Maria", "48754920041", "77454545, 12121277", "Rua Dois, 60, Bairro tal", "F", 1);

INSERT INTO funcionario (id, nome, cpf, telefones, endereco, sexo, id_departamento) 
VALUES (null, "Miguel", "3778374859", "199288494, 128383949", "Rua mingas, bairro gang", "M", 1);

UPDATE departamento SET ramal = 321 WHERE id = 1;
#INSERT INTO "TABELA" ("CAMPOS") VALUES("VALORES");
 
#SELECT "COLUNAS" FROM "TABELA";
 
#DELETE FROM "TABELA" WHERE id = "ID";
 
#UPDATE "TABELA" SET "COLUNA" = "VALOR" WHERE id = "ID";
