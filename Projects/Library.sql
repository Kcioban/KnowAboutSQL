DROP DATABASE IF EXISTS biblioteca; -- CUIDADO, se já existir um DB ele será excluido! // comando usado para fins didaticos.
CREATE DATABASE biblioteca charset=UTF8 COLLATE utf8_general_ci;

USE biblioteca;
DROP TABLE IF EXISTS livros;
CREATE TABLE livros(
id_livro INT IDENTITY(1,1) PRIMARY KEY,
nome_livro      VARCHAR (50) NOT NULL,
autor_livro     VARCHAR (50) NOT NULL,
genero_livro    VARCHAR (50) NOT NULL
);

CREATE TABLE retirada (
id_retirada INT IDENTITY(1,1) PRIMARY KEY,
data_retirada DATE NOT NULL
);

CREATE TABLE cliente (
id_cliente INT IDENTITY(1,1) PRIMARY KEY,
nome_cliente VARCHAR(50) NOT NULL
);

/* para o MSSQL não precisa dar 'show', usa-se uma query para visualizar.
SHOW TABLES;
DESCRIBE livros;
DESCRIBE retirada;
DESCRIBE cliente;   */
