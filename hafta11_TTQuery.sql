Use Hafta_09;

Select * from BizimTablo;
Select * from Bolumler;
Select * from Fakulteler;


Alter Table Bolumler ADD Fakulte Tinyint Null;

Update Bolumler SET Fakulte = 11;

INSERT INTO Bolumler (BolumNo,BolumAdi,BolumBaskani,OgrenciTemsilcisi,Fakulte)
Values (61,'Mimarlýk',Null,Null,16),
 (62,'Ýç Mimarlýk ve Çevre Tasarýmý',Null,Null,16),
 (63,'Görsel Ýletiþim Tasarýmý',Null,Null,16),
 (64,'Gastronomi ve Mutfak Sanatlarý',Null,Null,16),
 (65,'Dijital Oyun Tasarýmý',Null,Null,16),
 (31,'Siyaset Bilimi ve Uluslararasý Ýliþkiler (Ýng)',Null,Null,13),
 (32,'Uluslararasý Ticaret ve Finansman (Ýngilizce)',Null,Null,13),
 (33,'Psikoloji',Null,Null,13),
 (34,'Uluslararasý Ticaret ve Lojistik (Ýngilizce)',Null,Null,13),
 (35,'Yönetim Biliþim Sistemleri',Null,Null,13)


Select LEN('Siyaset Bilimi ve Uluslararasý Ýliþkiler (Ýngilizce)');

Select * FROM Bolumler INNER JOIN Fakulteler ON Bolumler.Fakulte = Fakulteler.FakulteNo;

INSERT INTO Bolumler (BolumNo,BolumAdi,BolumBaskani,OgrenciTemsilcisi,Fakulte)
Values (81,'Hukuk',Null,Null,Null),
(21,'Bilgi Güvenliði',Null,Null,54),
(51,'Spor Yöneticiliði',Null,Null,Null),
(52,'Antrönötlük Eðitimi',Null,Null,44)

Select * From Bolumler;

Select * FROM Bolumler INNER JOIN Fakulteler ON Bolumler.Fakulte = Fakulteler.FakulteNo;

Select BolumNo, BolumAdi, FakulteAdi ,Fakulte FROM Bolumler INNER JOIN Fakulteler ON Bolumler.Fakulte = Fakulteler.FakulteNo ORDER BY FakulteAdi ASC, BolumAdi DESC;
-- Ascending - Descending (Z den A ya , Büyükten Küçüðe)

Select * From Bolumler;
Select * From OgretimElemanlari;

Insert Into OgretimElemanlari (SicilNo,Ad,Soyad,MezuniyetYili,Unvani,Fakulte,Bolum,DoktoraMezuniyet)
Values (1147002,'Haslet','Ekþi Koçak',Null,'P',11,27,NUll)
Update  OgretimElemanlari SET Bolum = 47 Where  Bolum = 27


Insert Into OgretimElemanlari (SicilNo,Ad,Soyad,MezuniyetYili,Unvani,Fakulte,Bolum,DoktoraMezuniyet)
Values (1335005,'Halime','Suvay Eker',Null,'D',13,35,NUll),
(1665001,'Çetin','Bigat',Null,'D',16,65,NUll),
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