CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
	id 	BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    poder VARCHAR(255),
    PRIMARY KEY (id)
);

CREATE TABLE tb_personagens(
	id 	BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    nascimento DATE NOT NULL,
    obj_principal VARCHAR(255) NOT NULL,
    id_classe BIGINT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_classe) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (nome, poder)
VALUES ("Bruxa", "Magia"), ("Sereia", "Ler mentes"), ("Elfo", "Arco e flecha"), ("Lobo", "Força"), ("Gnomo", "Sagacidade");

SELECT * FROM tb_classes;
SELECT * FROM tb_personagens;

INSERT INTO tb_personagens (nome, nascimento, obj_principal, id_classe)
VALUES ("Mariana", '1999-08-05', "Restaurar Atlântida", 2),
("Clariana", '1997-12-10', "Restaurar Atlântida", 2),
("Glauber", '2010-02-12', "Salvar a natureza", 3),
("Tobias", '1980-07-21', "Proteger indígenas e natureza", 4),
("Clóvis", '1987-08-05', "Vingar destruidores da natureza", 5),
("Madalena", '2011-08-05', "Enriquecer", 1),
("Tião", '1975-05-08', "Proteger a matilha", 4),
("Débredas", '1993-03-02', "Viajar e curtir a vida", 5);

ALTER TABLE tb_personagens ADD COLUMN poder_ataque INT NOT NULL;
ALTER TABLE tb_personagens ADD COLUMN poder_defesa INT NOT NULL;

UPDATE tb_personagens 
SET poder_ataque = 1500, poder_defesa = 2000 WHERE id = 1;
UPDATE tb_personagens 
SET poder_ataque = 2500, poder_defesa = 3000 WHERE id = 2;
UPDATE tb_personagens 
SET poder_ataque = 10000, poder_defesa = 5000 WHERE id = 3;
UPDATE tb_personagens 
SET poder_ataque = 3500, poder_defesa = 4000 WHERE id = 4;
UPDATE tb_personagens 
SET poder_ataque = 1000, poder_defesa = 2000 WHERE id = 5;
UPDATE tb_personagens 
SET poder_ataque = 1500, poder_defesa = 2000 WHERE id = 6;
UPDATE tb_personagens 
SET poder_ataque = 3500, poder_defesa = 4000 WHERE id = 7;
UPDATE tb_personagens 
SET poder_ataque = 500, poder_defesa = 1000 WHERE id = 8;

SELECT *
FROM tb_personagens WHERE poder_ataque > 2000;

SELECT *
FROM tb_personagens WHERE poder_ataque BETWEEN 1000 AND 2000;

SELECT *
FROM tb_personagens WHERE nome LIKE "%c%";

SELECT *
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.id_classe = tb_classes.id;

SELECT *
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.id_classe = tb_classes.id
WHERE tb_classes.id = 2;