CREATE DATABASE sprint2;

USE sprint2;

CREATE TABLE atleta(
idAtleta INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50),
modalidade VARCHAR(40),
qtdMedalha INT);

INSERT INTO atleta VALUES
	(null, 'Ana', 'volei', '3'),
    (null, 'Paulo', 'basquete', '1'),
    (null, 'Felipe', 'basquete', '2'),
    (null, 'Carlos', 'volei', '2'),
    (null, 'Anderson', 'natacao', '1');
    
CREATE TABLE pais(
idPais INT PRIMARY KEY,
nome VARCHAR(30),
capital VARCHAR(40)
);

INSERT INTO pais VALUES
	(102, 'Alemanha', 'berlim'),
    (103, 'Brasil', 'brasilia'), 
    (104, 'Argentina', 'buenos aires'), 
    (105, 'França', 'paris');
    
ALTER TABLE atleta ADD COLUMN fkPais INT,
	ADD CONSTRAINT fkPais FOREIGN KEY (fkPais)
		REFERENCES Pais(idPais);
        
SELECT * FROM atleta;

SELECT * FROM pais;

SELECT 
atleta.*,
pais.nome
FROM atleta JOIN pais
ON atleta.fkPais = pais.idPais;


UPDATE atleta SET fkPais = 102 WHERE idAtleta = 1;

UPDATE atleta SET fkPais = 103 WHERE idAtleta = 2;

UPDATE atleta SET fkPais = 103 WHERE idAtleta = 3;

UPDATE atleta SET fkPais = 104 WHERE idAtleta = 4;

UPDATE atleta SET fkPais = 105 WHERE idAtleta = 5;

SELECT 
atleta.nome,
pais.nome
FROM atleta JOIN pais
ON atleta.fkPais = pais.idPais;

SELECT 
atleta.*,
pais.nome,
pais.capital
FROM atleta JOIN pais
ON atleta.fkPais = pais.idPais;


CREATE TABLE musica(
idMusica INT PRIMARY KEY AUTO_INCREMENT,
titulo VARCHAR(40),
artista VARCHAR(40),
genero VARCHAR(40)
);

INSERT INTO musica(titulo, artista, genero) VALUES
	('Sad Statue', 'system of a down', 'rock'),
    ('This Cocaine Makes Me Feel Like I', 'system of a down', 'rock'),
    ('A Secret Door', 'avatar', 'rock');
    
    
CREATE TABLE album(
idAlbum INT PRIMARY KEY AUTO_INCREMENT,
nomes VARCHAR(40),
tipo VARCHAR(40),
dtLanc DATE
);

INSERT INTO album VALUES
	(200, 'Mezmerize', 'digital', '2005-05-17'),
    (201,'Mezmerize', 'fisico', '2005-05-17'),
    (202,'Hunter Gatherer', 'digital', '2020-05-14');
    
SELECT * FROM musica;

SELECT * FROM album;

ALTER TABLE musica ADD COLUMN fkAlbum INT,
	ADD CONSTRAINT fkAlbum FOREIGN KEY (fkAlbum)
		REFERENCES album(idAlbum);
        
UPDATE musica SET fkAlbum = 200 WHERE idMusica = 1;

UPDATE musica SET fkAlbum = 200 WHERE idMusica = 2;

UPDATE musica SET fkAlbum = 202 WHERE idMusica = 3;

SELECT  
musica.* ,
musica.titulo,
album.nomes
FROM musica JOIN album
	ON musica.fkAlbum = album.idAlbum;

SELECT 
musica.titulo,
album.nomes
FROM musica JOIN album
ON musica.fkAlbum = album.idAlbum;
    
SELECT 
musica.*,
album.nomes,
album.tipo
FROM musica JOIN album
ON musica.fkAlbum = album.idAlbum;




        
        



    



    









