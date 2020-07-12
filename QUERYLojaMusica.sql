CREATE DATABASE LojaCd;
USE LojaCd;

CREATE TABLE Musica (
	codigo_musica int,
    nome_musica varchar(50),
    duracao time,
    PRIMARY KEY (codigo_musica)
);

CREATE TABLE Autor (
	codigo_autor int,
    nome_autor varchar(50),
    PRIMARY KEY (codigo_autor)
);

CREATE TABLE Gravadora (
	codigo_gravadora int,
    nome_gravadora varchar(50),
    PRIMARY KEY (codigo_gravadora)
);

CREATE TABLE Cd (
	codigo_cd int,
    nome varchar(50),
    codigo_gravadora int,
    preco decimal (5,2),
    PRIMARY KEY (codigo_cd),
    FOREIGN KEY (codigo_gravadora) REFERENCES Gravadora(codigo_gravadora)
);

CREATE TABLE MusicaAutor (
	codigo_musica_autor int,
    codigo_musica int,
    codigo_autor int,
    PRIMARY KEY (codigo_musica_autor),
    FOREIGN KEY (codigo_musica) REFERENCES Musica (codigo_musica),
    FOREIGN KEY (codigo_autor) REFERENCES Autor (codigo_autor)
);

CREATE TABLE ItemCd (
	codigo_item int,
    codigo_cd int,
    codigo_musica int,
    numeroFaixa int,
    PRIMARY KEY (codigo_item),
    FOREIGN KEY (codigo_cd) REFERENCES Cd (codigo_cd),
    FOREIGN KEY (codigo_musica) REFERENCES Musica (codigo_musica)
);

INSERT INTO Gravadora (codigo_gravadora, nome_gravadora) VALUES
	(1, "EMI"),
    (2, "PolyGram");
    
INSERT INTO Autor (codigo_autor, nome_autor) VALUES 
	(1, "Renato Russo"),
    (2, "Tom Jobim"),
    (3, "Chico Buarque"),
    (4, "Dado Villa-Lobos"),
    (5, "Marcelo Bonfá"),
    (6, "Ico Ouro-Preto"),
    (7, "Vinicius de Moraes");
    
INSERT INTO Musica (codigo_musica, nome_musica, duracao) VALUES
	(1, "Será", '02:28'),
    (2, "Ainda é Cedo", '03:55'),
    (3, "Geração Coca-Cola", '02:20'),
    (4, "Eduardo e Mônica", '04:32'),
    (5, "Tempo Perdido", '05:00'),
    (6, "Índios", '04:23'),
    (7, "Que País é Este?", '02:54'),
    (8, "Faroeste Caboclo", '09:03'),
    (9, "Há Tempo", '03:16'),
    (10, "Pais e Filhos", '05:06'),
    (11, "Meninos e Meninas", '03:22'),
    (12, "Vento no Litoral", '06:05'),
    (13, "Perfeição", '04:34'),
    (14, "Giz", '03:20'),
    (15, "Dezesseis", '05:28'),
    (16, "Antes das Seis", '03:09'),
    (17, "Meninos, Eu Vi", '03:25'),
    (18, "Eu Te Amo", '03:26'),
    (19, "Piano na Mangueira", '02:23'),
    (20, "A Violeira", '02:54'),
    (21, "Anos Dourados", '02:56'),
    (22, "Olha, Maria", '03:55'),
    (23, "Biscate", '03:20'),
    (24, "Retrato em Preto e Branco", '03:03'),
    (25, "Falando de Amor", '03:20'),
    (26, "Pois É", '02:48'),
    (27, "Noite dos Mascarados", '02:42'),
    (28, "Sabiá", '03:20'),
    (29, "Imagina", '03:52'),
    (30, "Bate-Boca", '04:41');
    
INSERT INTO Cd (codigo_cd, nome, codigo_gravadora, preco) VALUES
	(1, "Mais do Mesmo", 2, 15.00),
    (2, "Bate-Boca", 1, 12.00);
    
INSERT INTO ItemCd (codigo_item, codigo_cd, codigo_musica, numeroFaixa) VALUES
	(1, 1, 1, 1),
    (2, 1, 2, 2),
    (3, 1, 3, 3),
    (4, 1, 4, 4),
    (5, 1, 5, 5),
    (6, 1, 6, 6),
    (7, 1, 7, 7),
    (8, 1, 8, 8),
    (9, 1, 9, 9),
    (10, 1, 10, 10),
    (11, 1, 11, 11),
    (12, 1, 12, 12),
    (13, 1, 13, 13),
    (14, 1, 14, 14),
    (15, 1, 15, 15),
    (16, 1, 16, 16),
    (17, 2, 17, 1),
    (18, 2, 18, 2),
    (19, 2, 19, 3),
    (20, 2, 20, 4),
    (21, 2, 21, 5),
    (22, 2, 22, 6),
    (23, 2, 23, 7),
    (24, 2, 24, 8),
    (25, 2, 25, 9),
    (26, 2, 26, 10),
    (27, 2, 27, 11),
    (28, 2, 28, 12),
    (29, 2, 29, 13),
    (30, 2, 30, 14); 
    
INSERT INTO MusicaAutor (codigo_musica_autor, codigo_musica, codigo_autor) VALUES 
	(1, 1, 1),
    (2, 2, 1),
    (3, 2, 5),
    (4, 2, 6),
    (5, 3, 1),
    (6, 3, 4),
    (7, 4, 1),
    (8, 4, 4),
    (9, 5, 1),
    (10, 6, 1),
    (11, 7, 1),
    (12, 8, 1),
    (13, 9, 1),
    (14, 9, 4),
    (15, 9, 5),
    (16, 10, 1),
    (17, 10, 4),
    (18, 10, 5),
    (19, 11, 1),
    (20, 11, 4),
    (21, 11, 5),
    (22, 12, 1),
    (23, 12, 4),
    (24, 12, 5),
    (25, 13, 1),
    (26, 13, 4),
    (27, 13, 5),
    (28, 14, 1),
    (29, 14, 4),
    (30, 14, 5),
    (31, 15, 1),
    (32, 15, 4),
    (33, 15, 5),
    (34, 16, 1),
    (35, 16, 4),
    (36, 16, 5),
    (37, 17, 1),
    (38, 17, 4),
    (39, 17, 5),
    (40, 18, 2),
    (41, 18, 3),
    (42, 19, 2),
    (43, 19, 3),
    (44, 20, 2),
    (45, 20, 3),
    (46, 21, 3),
    (47, 22, 2),
    (48, 22, 3),
    (49, 22, 7),
    (50, 23, 3),
    (51, 24, 2),
    (52, 25, 2),
    (53, 26, 2),
    (54, 27, 3),
    (55, 28, 2),
    (56, 28, 3),
    (57, 29, 2),
    (58, 30, 3); 
    
/* 01 - Listar os nomes dos autores em ordem crescente */
SELECT nome_autor FROM Autor
ORDER BY nome_autor ASC;

/* 02 - Listar nomes dos CD's das gravadoras de códigos entre 2 e 5 */
SELECT Cd.nome FROM Cd
WHERE Cd.codigo_cd >= 2 AND Cd.codigo_cd <= 5;

/* 03 - Listar os nomes dos CD's das gravadoras de código 1, 3, 4 */
SELECT Cd.nome FROM Cd
WHERE codigo_gravadora = 1 OR codigo_gravadora = 3 OR codigo_gravadora = 4;

/* 04 - Mostrar a quantidade de Cds  */
SELECT COUNT(codigo_cd) 
FROM Cd;

/* 05 - Mostrar a média de preço dos Cds */
SELECT ROUND(AVG(preco), 2) 
AS Media FROM Cd;

/* 06 - Mostrar o menor e o maior preço de Cd */
SELECT MIN(preco), MAX(preco) FROM Cd;

/* 07 - Listar os nomes das músicas e a sua duração em ordem descendente de duração */
SELECT Musica.nome_musica, Musica.duracao FROM Musica
ORDER BY Musica.duracao DESC;

/* 08 - Listar os nomes das músicas e a sua duração das músicas que duram mais que 5
minutos */
SELECT Musica.nome_musica, Musica.duracao FROM Musica
WHERE Musica.duracao > '05:00';

/* 09 - Listar os nomes das músicas e a sua duração com os nomes das músicas em ordem
ascendente */
SELECT Musica.nome_musica, Musica.duracao FROM Musica
ORDER BY Musica.nome_musica ASC;

/* 10 - Listar os nomes das músicas que começam com “a” */
SELECT nome_musica FROM Musica
WHERE nome_musica LIKE 'a%';

/* 11 - Listar os nomes das músicas que contenham “seis” */
SELECT nome_musica FROM Musica
WHERE nome_musica LIKE '%seis%';

/* 12 - Listar os nomes das músicas que não começam com “a” */
SELECT nome_musica FROM Musica
WHERE nome_musica NOT LIKE 'a%';

/* 13 - Listar os nome dos Cds cujo preço seja menor que 15,00 */
SELECT preco FROM Cd
WHERE preco < 15.00;

/* 14 - Listar os nomes das gravadoras que tem Cds na Loja */
SELECT Gravadora.nome_gravadora FROM Gravadora
JOIN Cd ON Gravadora.codigo_gravadora = Cd.codigo_gravadora;

/* 15 - Listar os códigos das músicas que se encontram na tabela MusicaAutor(apenas uma
música das encontradas) */
SELECT MusicaAutor.codigo_musica, Musica.nome_musica FROM MusicaAutor
JOIN Musica ON MusicaAutor.codigo_musica = Musica.codigo_musica
WHERE codigo_musica_autor = 7;

/* 16 - Mostrar a quantidade de músicas de cada Cd  */
SELECT COUNT(codigo_cd) FROM ItemCd
WHERE codigo_cd = 1
UNION
SELECT COUNT(codigo_cd) FROM ItemCd
WHERE codigo_cd = 2
UNION
SELECT COUNT(codigo_cd) FROM ItemCd
WHERE codigo_cd = 3;

/* 17 - Mostrar a quantidade de músicas de cada autor desde que este autor apareça em mais
de uma música */
SELECT COUNT(codigo_musica), nome_autor FROM MusicaAutor
JOIN Autor ON MusicaAutor.codigo_autor = Autor.codigo_autor
GROUP BY (MusicaAutor.codigo_autor)
HAVING COUNT(MusicaAutor.codigo_autor) > 1;

/* 18 - Listar os nomes das gravadoras com o nome dos Cds por elas gravadas */
SELECT Gravadora.nome_gravadora, Cd.nome FROM Cd
JOIN Gravadora ON Cd.codigo_gravadora = Gravadora.codigo_gravadora;

/* 19 - Listar todos os nomes das gravadoras e se tiver Cds gravados, listar também os nome
dos Cds */
SELECT Gravadora.nome_gravadora FROM Gravadora
JOIN Cd ON Gravadora.codigo_gravadora = Cd.codigo_gravadora
GROUP BY (Cd.codigo_gravadora)
HAVING COUNT(Cd.codigo_gravadora) <> 0
UNION
SELECT nome FROM Cd;

/* 20 - Listar os nomes das gravadoras com o nome dos Cds por elas gravadas e seu preços,
quando os preços for menor ou igual 15,00 */
SELECT Gravadora.nome_gravadora, Cd.nome, Cd.preco FROM Cd
JOIN Gravadora ON Cd.codigo_gravadora = Gravadora.codigo_gravadora
WHERE Cd.preco <= 15.00;

/* 21 - Incluir um novo cd no Banco de dados */
INSERT INTO Gravadora (codigo_gravadora, nome_gravadora) VALUES
	(3,"Parvati Records");
    
INSERT INTO Cd (codigo_cd, nome, codigo_gravadora, preco) VALUES
	(3, "Parvatrip", 3, 65.00);
    
INSERT INTO Autor (codigo_autor, nome_autor) VALUES
	(8, "Atriohm"),
    (9, "Tengri"),
    (10, "Elowinz"),
    (11, "Farebi Jalebi"),
    (12, "Seb"),
    (13, "Mubali");
    
INSERT INTO Musica (codigo_musica, nome_musica, duracao) VALUES
	(31, "Million Years Dance", '09:37'),
    (32, "Forest Singular", '12:02'),
    (33, "Remember", '06:55'),
    (34, "Gotta Antidote", '06:22'),
    (35, "Unknow Pleasure", '08:23'),
    (36, "Underground Zoo", '06:25'),
    (37, "NoctillusBali", '06:30'),
    (38, "Tengri", '02:27'),
    (39, "Wild Life", '07:08'),
    (40, "Gin & Tonic", '06:53');
    
INSERT INTO ItemCd (codigo_item, codigo_cd, codigo_musica, numeroFaixa) VALUES
	(31, 3, 31, 1),
    (32, 3, 32, 2),
    (33, 3, 33, 3),
    (34, 3, 34, 4),
    (35, 3, 35, 5),
    (36, 3, 36, 6),
    (37, 3, 37, 7),
    (38, 3, 38, 8),
    (39, 3, 39, 9),
    (40, 3, 40, 10);
    
INSERT INTO MusicaAutor (codigo_musica_autor, codigo_musica, codigo_autor) VALUES 
	(59, 31, 8),
    (60, 32, 8),
    (61, 32, 9),
    (63, 33, 10),
    (64, 34, 10),
    (65, 35, 13),
    (66, 36, 10),
    (67, 36, 11),
    (68, 37, 13),
    (69, 38, 8),
    (70, 38, 9),
    (71, 39, 12),
    (72, 40, 11); 


    

    
















    
 
   
    





    







