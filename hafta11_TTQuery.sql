Use Hafta_09;

Select * from BizimTablo;
Select * from Bolumler;
Select * from Fakulteler;


Alter Table Bolumler ADD Fakulte Tinyint Null;

Update Bolumler SET Fakulte = 11;

INSERT INTO Bolumler (BolumNo,BolumAdi,BolumBaskani,OgrenciTemsilcisi,Fakulte)
Values (61,'Mimarl�k',Null,Null,16),
 (62,'�� Mimarl�k ve �evre Tasar�m�',Null,Null,16),
 (63,'G�rsel �leti�im Tasar�m�',Null,Null,16),
 (64,'Gastronomi ve Mutfak Sanatlar�',Null,Null,16),
 (65,'Dijital Oyun Tasar�m�',Null,Null,16),
 (31,'Siyaset Bilimi ve Uluslararas� �li�kiler (�ng)',Null,Null,13),
 (32,'Uluslararas� Ticaret ve Finansman (�ngilizce)',Null,Null,13),
 (33,'Psikoloji',Null,Null,13),
 (34,'Uluslararas� Ticaret ve Lojistik (�ngilizce)',Null,Null,13),
 (35,'Y�netim Bili�im Sistemleri',Null,Null,13)


Select LEN('Siyaset Bilimi ve Uluslararas� �li�kiler (�ngilizce)');

Select * FROM Bolumler INNER JOIN Fakulteler ON Bolumler.Fakulte = Fakulteler.FakulteNo;

INSERT INTO Bolumler (BolumNo,BolumAdi,BolumBaskani,OgrenciTemsilcisi,Fakulte)
Values (81,'Hukuk',Null,Null,Null),
(21,'Bilgi G�venli�i',Null,Null,54),
(51,'Spor Y�neticili�i',Null,Null,Null),
(52,'Antr�n�tl�k E�itimi',Null,Null,44)

Select * From Bolumler;

Select * FROM Bolumler INNER JOIN Fakulteler ON Bolumler.Fakulte = Fakulteler.FakulteNo;

Select BolumNo, BolumAdi, FakulteAdi ,Fakulte FROM Bolumler INNER JOIN Fakulteler ON Bolumler.Fakulte = Fakulteler.FakulteNo ORDER BY FakulteAdi ASC, BolumAdi DESC;
-- Ascending - Descending (Z den A ya , B�y�kten K����e)

Select * From Bolumler;
Select * From OgretimElemanlari;

Insert Into OgretimElemanlari (SicilNo,Ad,Soyad,MezuniyetYili,Unvani,Fakulte,Bolum,DoktoraMezuniyet)
Values (1147002,'Haslet','Ek�i Ko�ak',Null,'P',11,27,NUll)
Update  OgretimElemanlari SET Bolum = 47 Where  Bolum = 27


Insert Into OgretimElemanlari (SicilNo,Ad,Soyad,MezuniyetYili,Unvani,Fakulte,Bolum,DoktoraMezuniyet)
Values (1335005,'Halime','Suvay Eker',Null,'D',13,35,NUll),
(1665001,'�etin','Bigat',Null,'D',16,65,NUll),
(1221003,'Fatih','Parlak',Null,'R',12,21,NUll)

Alter Table OgretimElemanlari Alter Column MezuniyetYili Smallint Null;

Select * From Bolumler Inner Join OgretimElemanlari oe ON Bolumler.Fakulte = oe.Fakulte

Select * From Fakulteler;

Select b.BolumAdi, b.BolumBaskani, oe.Ad, oe.Soyad, oe.Unvani, f.FakulteAdi FROM Bolumler b
INNER JOIN OgretimElemanlari oe ON b.BolumBaskani = oe.SicilNo
INNER JOIN Fakulteler F ON f.FakulteNo = b.Fakulte;

Select * FROM Unvanlar;

Alter Table Unvanlar ADD Kisaltma Char(1) Not NUll Default 'R';
Update Unvanlar Set Kisaltma ='P' Where Unvan Like 'P%';
Update Unvanlar Set Kisaltma ='S' Where Unvan Like 'Doc. D%';
Update Unvanlar Set Kisaltma ='D' Where Unvan Like 'Dr%';

Select @@VERSION;