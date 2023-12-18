USE Akademi_08;
SELECT * FROM Fakulteler;
SELECT * FROM OgretimElemanlari;

CREATE TABLE Bolumler
(
id smallint identity(1,1),
BolumNo smallint NOT NULL,
BolumAdi varchar(50),
BolumBaskani int null,
OgrenciTemsilcisi int NULL
);

INSERT INTO Bolumler (BolumNo,BolumAdi, BolumBaskani, OgrenciTemsilcisi)
VALUES (41,'Bilgisayar M�hendisli�i',1141023,NULL),
(42,'Elektrik Elektronik M�hendisli�i',NULL,NULL),
(43,'End�stri M�hendisli�i',NULL,NULL),
(44,'Makine M�hendisli�i',NULL,NULL),
(45,'Mekatronik M�hendisli�i(T�rk�e)',1146003,NULL),
(46,'Mekatronik M�hendisli�i(�ng)',1146003,NULL),
(47,'Metalurji Ve Malzeme M�hendisli�i',1147002,NULL),
(48,'Yaz�l�m M�hendisli�i',1146003,NULL),
(49,'Yaz�l�m M�hendisli�i(�ng)',1146003,NULL)

SELECT * FROM Bolumler;

INSERT INTO Bolumler VALUES(47,'Yapay Zeka M�hendisli�i',NULL,NULL)

--KISITLAR -> CONSTRAINT
--UNIQUE (Tekil, tekrarlanmayan), --CHECK(Kontrol etme), --PK(Primary key) Birincil anahtar
--FK (Foreign Key) Yabanc�l anahtar
--PK hem bir KISIT hemde bir INDEX

ALTER TABLE Bolumler ADD CONSTRAINT lagalugaxxcc33455 UNIQUE(BolumNo);
SELECT BolumNo FROM Bolumler;
--SELECT DISTINCT BolumNo FROM Bolumler; -- Tekrarlayanlar� ortadan kald�r�r fakat hatay� bulamazs�n�z.

SELECT * FROM Bolumler GROUP BY BolumNo;

SELECT BolumNo FROM Bolumler GROUP BY BolumNo;

SELECT COUNT(*) FROM Bolumler; --sat�r say�s�

SELECT COUNT(*) FROM Bolumler WHERE BolumNo>44 ; --44 den b�y�k sat�r say�s�

SELECT * FROM Bolumler WHERE BolumNo>44 ;

SELECT * FROM Bolumler WHERE BolumNo>46 AND BolumAdi LIKE '%ing%' ; -- 1 kay�t 

SELECT * FROM Bolumler WHERE BolumNo>=46 AND BolumAdi LIKE '%ing%' ; -- 2 kay�t

SELECT * FROM Bolumler WHERE BolumNo>46 OR BolumAdi LIKE '%ing%' ;  -- 5 kay�t

SELECT COUNT(*) FROM Bolumler WHERE BolumNo>46 OR BolumAdi LIKE '%ing%'  ; 

SELECT BolumNo, COUNT(*) FROM Bolumler GROUP BY BolumNo;

SELECT BolumNo, COUNT(*) FROM Bolumler WHERE COUNT(*)>1 GROUP BY BolumNo; -- HATALI!

SELECT BolumNo, COUNT(*) FROM Bolumler GROUP BY BolumNo HAVING COUNT(*)>1; -- TEKRARLAYANI BULUR

SELECT * FROM Bolumler WHERE BolumNo = 47; 

UPDATE Bolumler SET BolumNo= 50; -- �ALI�TIRMA , Hepsini 50 yapar

SELECT * FROM Bolumler WHERE BolumAdi LIKE 'Yapay%';
UPDATE Bolumler SET BolumNo=50 WHERE BolumAdi LIKE 'Yapay%';

ALTER TABLE Bolumler ADD CONSTRAINT lagalugaxxcc33455 UNIQUE(BolumNo);

ALTER TABLE Bolumler DROP CONSTRAINT lagalugaxxcc33455;

ALTER TABLE Bolumler ADD CONSTRAINT u_Bolumler_BolumNo UNIQUE(BolumNo);

SELECT * FROM OgretimElemanlari;
INSERT INTO OgretimElemanlari (SicilNo, Ad, Soyad, MezuniyetYili, Unvani, Fakulte,Bolum,DoktoraMezuniyet)
VALUES (1141021,'Esra �erife','Din�er',2000,'D',11,41,'2007-11-23');  -- Tarihi '20071123 veya '2007-11-23' olarak girebiliriz YYYY AA GG olmal� 
