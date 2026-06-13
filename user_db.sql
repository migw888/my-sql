CREATE DATABASE user_db;

USE user_db;

CREATE TABLE user(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    cpf CHAR(11) NOT NULL UNIQUE,
    apelido VARCHAR(30)
);
INSERT INTO user (nome, email, cpf, apelido)
	VALUES ("Miguel", "miguel.santos14677@gmail.com", "123123132", null);	