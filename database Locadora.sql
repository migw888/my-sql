CREATE DATABASE Locaguel;

USE Locaguel;

CREATE TABLE Cliente(	
	Id INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL,
	CPF CHAR(11) UNIQUE NOT NULL,
    Telefone VARCHAR(50) NOT NULL,
    Endereco VARCHAR(100) NOT NULL
);

CREATE TABLE Categoria(	
	Id INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL,
	Descrição VARCHAR(80)
);
    

CREATE TABLE Veiculos(
	Id INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(25) NOT NULL,
    Placa VARCHAR(8) NOT NULL,
    Cor VARCHAR(40) NOT NULL,
    KM INT,
    Id_Categoria INT,
    
    FOREIGN KEY (Id_Categoria)
    REFERENCES Categoria(Id)
);

CREATE TABLE locacao(
	Id INT AUTO_INCREMENT PRIMARY KEY,
    Valor DECIMAL (15, 2) NOT NULL,
    id_Cliente INT,
	id_veiculos VARCHAR(30),

    FOREIGN KEY (id_Cliente)
    REFERENCES Cliente(Id)
);

INSERT INTO Cliente (Id, Nome, CPF, Telefone, Endereco)
VALUES(
NULL, #id
"Matheus", #nome
"6474837320", #cpf
"13493938404", #telefone
"Condominio do francisco, hortolandia)" #Endereco
);

SELECT * FROM Cliente;
SELECT Id, Nome FROM Cliente;

DELETE FROM Cliente WHERE Id = ?;
UPDATE Cliente SET Id = 2 WHERE Id = 4;

INSERT INTO Categoria(Id, Nome, Descricao)
VALUES(
NULL, #id
"Sedan", #nome
"Baixo, longo" #Descricao
);

SELECT * FROM Veiculos;

INSERT INTO Veiculos (Id, Nome, Placa, Cor, KM, id_Categoria)
VALUES(
NULL, #id
"Lancer", #nome
"BAR-6H34", #Placa
"Azul", #Cor
"2350", #KM
1
);
