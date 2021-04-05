CREATE TABLE pessoa(
	codigo BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,
	logradouro VARCHAR(50),
	numero INTEGER,
	complemento VARCHAR(50),
	bairro VARCHAR(50),
	cep VARCHAR(10),
	cidade VARCHAR(30),
	estado VARCHAR(30),
	ativo BOOLEAN DEFAULT true
	
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO pessoa (nome, logradouro, numero, complemento, bairro, cep, cidade, estado) VALUES ("Enzo", "Tapirapés", 83, "Frente ao Cac", "Jardim Leblon", "79.092-090", "Campo Grande", "MS");
INSERT INTO pessoa (nome, logradouro, numero, complemento, bairro, cep, cidade, estado) VALUES ("Edson", "Tapirapés", 83, "Frente ao Cac", "Jardim Leblon", "79.092-090", "Campo Grande", "MS");
INSERT INTO pessoa (nome, logradouro, numero, complemento, bairro, cep, cidade, estado) VALUES ("Sandra", "Tapirapés", 83, "Frente ao Cac", "Jardim Leblon", "79.092-090", "Campo Grande", "MS");
INSERT INTO pessoa (nome, logradouro, numero, complemento, bairro, cep, cidade, estado) VALUES ("Rayssa" , "Tapirapés", 83, "Frente ao Cac", "Jardim Leblon", "79.092-090", "Campo Grande", "MS");
INSERT INTO pessoa (nome, logradouro, numero, complemento, bairro, cep, cidade, estado) VALUES ("Daniel", "Marechal Deodoro", 786, "Frente ao Terminal Bandeirantes", "Jardim Bandeirantes", "79.092-000", "Campo Grande", "MS");
INSERT INTO pessoa (nome, logradouro, numero, complemento, bairro, cep, cidade, estado) VALUES ("Thais", "Marechal Deodoro", 786, "Frente ao Terminal Bandeirantes", "Jardim Bandeirantes", "79.092-000", "Campo Grande", "MS");
INSERT INTO pessoa (nome, logradouro, numero, complemento, bairro, cep, cidade, estado) VALUES ("Raquel", "Marechal Deodoro", 786, "Frente ao Terminal Bandeirantes", "Jardim Bandeirantes", "79.092-000", "Campo Grande", "MS");
INSERT INTO pessoa (nome, logradouro, numero, complemento, bairro, cep, cidade, estado) VALUES ("Clodoaldo", "Marechal Deodoro", 786, "Frente ao Terminal Bandeirantes", "Jardim Bandeirantes", "79.092-000", "Campo Grande", "MS");
INSERT INTO pessoa (nome, logradouro, numero, complemento, bairro, cep, cidade, estado, ativo) VALUES ("Marlene", "Av Cuiabá", 2681, "Atrás da Morena Doces", "Jardim Bandeirantes", "79.092-030", "Campo Grande", "MS", false);
INSERT INTO pessoa (nome, logradouro, numero, complemento, bairro, cep, cidade, estado, ativo) VALUES ("Thiago", "Av Cuiabá", 2681, "Atrás da Morena Doces", "Jardim Bandeirantes", "79.092-030", "Campo Grande", "MS", false);

