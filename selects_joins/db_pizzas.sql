CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id 	BIGINT AUTO_INCREMENT,
    tipo VARCHAR(255) NOT NULL,
    formato VARCHAR(255),
    PRIMARY KEY (id)
);

CREATE TABLE tb_pizzas(
	id 	BIGINT AUTO_INCREMENT,
    sabor VARCHAR(255) NOT NULL,
    sazonalidade VARCHAR(255) NOT NULL,
    preco DECIMAL(6,2) NOT NULL,
    id_cat BIGINT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_cat) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (tipo, formato)
VALUES ("Salgada Tradicional","Redonda"), ("Salgada Premium","Quadrada"), ("Doce Standard","Redonda"), ("Doce Especial","Quadrada"), ("Salgada Extra Premium","Redonda");

SELECT * FROM tb_categorias;
SELECT * FROM tb_pizzas;

INSERT INTO tb_pizzas (sabor, sazonalidade, preco, id_cat)
VALUES ("Marguerita", "Ano todo", 59.90, 1), 
("Da Nonna", "Finais de semana", 105.90, 2), 
("Brigadeiro", "Ano todo", 35.90, 3), 
("Nutella com morangos", "Finais de semana", 75.90, 4), 
("Caprese di Napole", "Mensal", 135.90, 5), 
("Portuguesa", "Ano todo", 68.50, 1), 
("Red Velvet", "Finais de semana", 78.80, 4), 
("Calabresa Paulista", "Ano todo", 89.90, 1);

SELECT *
FROM tb_pizzas WHERE preco > 45.00;

SELECT *
FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT *
FROM tb_pizzas WHERE sabor LIKE "%m%";

SELECT *
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.id_cat = tb_categorias.id;

SELECT *
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.id_cat = tb_categorias.id
WHERE tb_categorias.id = 1;