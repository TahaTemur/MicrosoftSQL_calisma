USE Akademi_7
SELECT * FROM OgretimElemanlari;
--DDL komutu CREAT TABLE
CREATE TABLE Oylesine (ad varchar(55), soyad varchar(50), yas tinyint);
INSERT INTO Oylesine VALUES('feridun','özçakýr',13);

INSERT INTO Oylesine VALUES('yacouba','konate',23),('ali','ozan',21), ('ali','veli',10);

SELECT * FROM Oylesine;

DROP TABLE Oylesine;

CREATE TABLE Oylesine 
(
tekilKolon smallint identity(11,4),
ad varchar(55), 
soyad varchar(50), 
yas tinyint
);

INSERT INTO Oylesine (yas,ad,soyad)
VALUES(22,'Esra','Bora')

INSERT INTO Oylesine VALUES('feridun','özçakýr',13);

INSERT INTO Oylesine VALUES('yacouba','konate',23),('ali','ozan',21), ('ali','veli',10);

INSERT INTO Oylesine VALUES('feridun','özçakýr',13);

SELECT * FROM Oylesine;

DELETE FROM Oylesine WHERE tekilKolon=15;

------------------------------------------------------
DROP TABLE [dbo].[OgretimElemanlari]
--Hafta 4 kodlarý

CREATE TABLE OgretimElemanlari 
(
ID int identity(1,1),
SicilNo int NOT NULL,
Ad varchar(50) NOT NULL, 
Soyad varchar(40) NOT NULL, 
MezuniyetYili smallint NOT NULL, 
Unvani char(1) NOT NULL,
Fakulte tinyint NULL, 
Bolum tinyint NULL
);
--DOL
--ALTER
ALTER TABLE OgretimElemanlari ADD DoktoraMezuniyet date NULL
INSERT INTO OgretimElemanlari (SicilNo,Ad,Soyad,MezuniyetYili,Unvani, DoktoraMezuniyet, Fakulte, Bolum)
VALUES (1147001, 'Halil Ýbrahim','UÐRAÞ',1999, 'P', '2007-10-19', 11,47);

INSERT INTO OgretimElemanlari (SicilNo,Ad,Soyad,MezuniyetYili,Unvani, DoktoraMezuniyet, Fakulte, Bolum)
VALUES (1141023, 'Feridun','ÖZÇAKIR',1994, 'D', '2016-03-23', 11,41);

INSERT INTO OgretimElemanlari (SicilNo,Ad,Soyad,MezuniyetYili,Unvani, DoktoraMezuniyet, Fakulte, Bolum) 
VALUES
(1146003, 'Savaþ','DÝLÝBAL',2001, 'R', '2011-12-01', 11,46),
(1146007, 'Özden','ASLAN',1998, 'P', '2008-04-23', 11,46);

SELECT * FROM OgretimElemanlari;

CREATE TABLE Fakulteler
(
id tinyint identity (11,1),
FakulteNo tinyint NOT NULL,
FakulteAdi varchar(100) NOT NULL,
Dekan int NULL
);

INSERT INTO Fakulteler(FakulteNo, FakulteAdi,Dekan)
VALUES(11,'Muhendislik Fakultesi',1147001);

INSERT INTO Fakulteler(FakulteNo, FakulteAdi,Dekan)
VALUES(12,'Saglik Fakultesi',NULL), 
(13, 'Ikdisadi idari ve sosyal bilimler fakultesi',NULL),
(14,'Hukuk Fakultesi',Null),
(15,'Spor bilimleri fakultesi',NULL),
(16,'Guzel sanatlar ve mimari fakultesi',NULL),
(21,'Meslek Yuksek Okulu',NULL),
(22,'Adalet meslek yüksek okulu',NULL);

SELECT * FROM Fakulteler;

DROP TABLE Fakulteler;

--ÖDEV: Bölümler için en ideal tablo yapýsýný oluþturun , el yazýsý ile getirin
--ÖDEV2: DML(sadece oglen),DDL  (sadece ogren),DCL,TCL nedir statementlarýný açýklamalý yazýnýz

