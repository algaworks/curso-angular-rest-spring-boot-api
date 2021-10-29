CREATE TABLE estado (
	codigo BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO estado (codigo, nome) VALUES(1, 'Acre');
INSERT INTO estado (codigo, nome) VALUES(2, 'Alagoas');
INSERT INTO estado (codigo, nome) VALUES(3, 'Amazonas');
INSERT INTO estado (codigo, nome) VALUES(4, 'Amapá');
INSERT INTO estado (codigo, nome) VALUES(5, 'Bahia');
INSERT INTO estado (codigo, nome) VALUES(6, 'Ceará');
INSERT INTO estado (codigo, nome) VALUES(7, 'Distrito Federal');
INSERT INTO estado (codigo, nome) VALUES(8, 'Espírito Santo');
INSERT INTO estado (codigo, nome) VALUES(9, 'Goiás');
INSERT INTO estado (codigo, nome) VALUES(10, 'Maranhão');
INSERT INTO estado (codigo, nome) VALUES(11, 'Minas Gerais');
INSERT INTO estado (codigo, nome) VALUES(12, 'Mato Grosso do Sul');
INSERT INTO estado (codigo, nome) VALUES(13, 'Mato Grosso');
INSERT INTO estado (codigo, nome) VALUES(14, 'Pará');
INSERT INTO estado (codigo, nome) VALUES(15, 'Paraíba');
INSERT INTO estado (codigo, nome) VALUES(16, 'Pernambuco');
INSERT INTO estado (codigo, nome) VALUES(17, 'Piauí');
INSERT INTO estado (codigo, nome) VALUES(18, 'Paraná');
INSERT INTO estado (codigo, nome) VALUES(19, 'Rio de Janeiro');
INSERT INTO estado (codigo, nome) VALUES(20, 'Rio Grande do Norte');
INSERT INTO estado (codigo, nome) VALUES(21, 'Rondônia');
INSERT INTO estado (codigo, nome) VALUES(22, 'Roraima');
INSERT INTO estado (codigo, nome) VALUES(23, 'Rio Grande do Sul');
INSERT INTO estado (codigo, nome) VALUES(24, 'Santa Catarina');
INSERT INTO estado (codigo, nome) VALUES(25, 'Sergipe');
INSERT INTO estado (codigo, nome) VALUES(26, 'São Paulo');
INSERT INTO estado (codigo, nome) VALUES(27, 'Tocantins');



CREATE TABLE cidade (
	codigo BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,
  codigo_estado BIGINT(20) NOT NULL,
  FOREIGN KEY (codigo_estado) REFERENCES estado(codigo)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO cidade (codigo, nome, codigo_estado) VALUES (1, 'Belo Horizonte', 11);
INSERT INTO cidade (codigo, nome, codigo_estado) VALUES (2, 'Uberlândia', 11);
INSERT INTO cidade (codigo, nome, codigo_estado) VALUES (3, 'Uberaba', 11);
INSERT INTO cidade (codigo, nome, codigo_estado) VALUES (4, 'São Paulo', 26);
INSERT INTO cidade (codigo, nome, codigo_estado) VALUES (5, 'Campinas', 26);
INSERT INTO cidade (codigo, nome, codigo_estado) VALUES (6, 'Rio de Janeiro', 19);
INSERT INTO cidade (codigo, nome, codigo_estado) VALUES (7, 'Angra dos Reis', 19);
INSERT INTO cidade (codigo, nome, codigo_estado) VALUES (8, 'Goiânia', 9);
INSERT INTO cidade (codigo, nome, codigo_estado) VALUES (9, 'Caldas Novas', 9);



ALTER TABLE pessoa DROP COLUMN cidade;
ALTER TABLE pessoa DROP COLUMN estado;
ALTER TABLE pessoa ADD COLUMN codigo_cidade BIGINT(20);
ALTER TABLE pessoa ADD CONSTRAINT fk_pessoa_cidade FOREIGN KEY (codigo_cidade) REFERENCES cidade(codigo);

UPDATE pessoa SET codigo_cidade = 2;
