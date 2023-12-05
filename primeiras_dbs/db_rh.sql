CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(255),
    area VARCHAR(255),
    salario DECIMAL NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores(nome, cargo, area, salario)
VALUES ("João Souza", "Vendedor",  "Comercial", 5000.00),
("Elon Musk", "Estagiário",  "Comercial", 1500.00),
("Luiz Gomes", "Supervisor",  "Comercial", 7000.00),
("Paulo Gonçalvez", "Gerente",  "Comercial", 9000.00),
("Suzana Paes", "Sócia",  "Comercial", 12000.00);

SELECT * FROM tb_colaboradores WHERE salario > 2000.00;

SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

SELECT salario, CONCAT ('R$ ' , FORMAT (salario, 2, 'pt_BR')) AS salário
FROM tb_colaboradores;

UPDATE tb_colaboradores SET nome = 'Laura Silva' WHERE id = 3;

SELECT * FROM tb_colaboradores;