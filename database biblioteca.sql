CREATE DATABASE Biblioteca;

USE Biblioteca;


CREATE TABLE Autor(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    idade INT NOT NULL,
    endereco VARCHAR(30) NOT NULL,
    cpf VARCHAR(30) UNIQUE NOT NULL
);


CREATE TABLE Editora(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    endereco VARCHAR(30) NOT NULL,
    telefone VARCHAR(30) NOT NULL
);


CREATE TABLE Livro(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    genero VARCHAR(30) NOT NULL,

    id_Autor INT,
    id_Editora INT,

    FOREIGN KEY (id_Autor)
    REFERENCES Autor(id),

    FOREIGN KEY (id_Editora)
    REFERENCES Editora(id)
);

CREATE TABLE Usuario(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    idade INT NOT NULL,
    endereco VARCHAR(30) NOT NULL,
    cpf VARCHAR(30) UNIQUE NOT NULL
);


CREATE TABLE Emprestimo(
    id INT PRIMARY KEY AUTO_INCREMENT,

    id_Livro INT,
    id_Usuario INT,

    FOREIGN KEY (id_Livro)
    REFERENCES Livro(id),

    FOREIGN KEY (id_Usuario)
    REFERENCES Usuario(id)
);