CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    sala VARCHAR(255) NOT NULL,
    mail_resp VARCHAR(255) NOT NULL,
    nota_final DECIMAL(6,2) NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE tb_alunos RENAME COLUMN materia TO mail_resp;
ALTER TABLE tb_alunos RENAME COLUMN nota TO nota_final;

INSERT INTO tb_alunos (nome, sala, mail_resp, nota_final)
VALUES ("Maria Eduarda Chaves","5°B","mae_eduarda@mail.com", 8.50),
("Ana Carolina Alves","5°A","pai_ana@mail.com", 7.50),
("Felipe Ribeiro","5°B","mae_felipe@mail.com", 5.50),
("Jose Augusto Nogueira","5°A","mae_jose@mail.com", 9.50),
("Fernando Pires","5°A","pai_fernandoa@mail.com", 7.50),
("Claudia Fernandes","5°B","mae_claudia@mail.com", 5.00),
("Madalena Rodrigues","5°B","mae_mada@mail.com", 8.50),
("Coralina Santos","5°A","mae_cora@mail.com", 10.00);

SELECT * FROM tb_alunos WHERE nota_final > 7.00;
SELECT * FROM tb_alunos WHERE nota_final < 7.00;

UPDATE tb_alunos SET nota_final = 6.00 WHERE id = 3;