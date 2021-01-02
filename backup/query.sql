CREATE DATABASE website;

use website;

CREATE TABLE tb_pessoas (
	idpessoa INT IDENTITY (1,1) NOT NULL CONSTRAINT pk_pessoas PRIMARY KEY,
	despessoa VARCHAR(255) NOT NULL,
	desemail VARCHAR(255) NOT NULL,
	dtcadastro DATETIME NOT NULL CONSTRAINT df_pessoas_dtcadastro DEFAULT (getdate()),
	instatus BIT NOT NULL CONSTRAINT df_pessoas_instatus DEFAULT (1)
);

SELECT * FROM tb_pessoas;

INSERT INTO tb_pessoas (despessoa, desemail)
VALUES ('Paulo Souza', 'paulo.csouzas@outlook.com');

SELECT * FROM tb_pessoas;