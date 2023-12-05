CREATE DATABASE db_produtos;

USE db_produtos;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    marca VARCHAR(255),
    categoria VARCHAR(255),
    preco DECIMAL(6,2) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos (nome, marca, categoria, preco)
VALUES ("Chaveiro","AutoChaves","Miscelaneous", 15.99),
("Batedeira","Brastempo","Eletrodoméstico", 155.99),
("Escada 4M","Casa&Casa","Utilitários", 80.99),
("Tapete","Casa&Casa","Decoração", 90.99),
("Torradeira","Dako&Deko","Eletrodoméstico", 115.99),
("Chuveiro","Laurenzoti","Eletrodoméstico", 95.99),
("Chaleira","Brastempo","Cozinha", 75.99),
("Geladeira","Consal","Eletrodoméstico", 2795.99);

SELECT * FROM tb_produtos WHERE preco > 500.00;

SELECT * FROM tb_produtos WHERE preco < 500.00;

UPDATE tb_produtos SET preco = 107.99 WHERE id = 4;

SELECT * FROM tb_produtos;