CREATE TABLE contato (
  codigo BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
	codigo_pessoa BIGINT(20) NOT NULL,
	nome VARCHAR(50) NOT NULL,
	email VARCHAR(100) NOT NULL,
	telefone VARCHAR(20) NOT NULL,
  FOREIGN KEY (codigo_pessoa) REFERENCES pessoa(codigo)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into contato (codigo, codigo_pessoa, nome, email, telefone) values (1, 1, 'Marcos Henrique', 'marcos@algamoney.com', '00 0000-0000');
