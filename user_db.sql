USE user_db;

DROP TABLE user;

CREATE TABLE user (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100),
  email VARCHAR(100),
  cpf VARCHAR(14),
  apelido VARCHAR(50)
);
INSERT INTO user (nome, email, cpf, apelido)
	VALUES ("Miguel", "miguel.santos14677@gmail.com", "123123132", null);	
