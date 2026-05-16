-- Tabloyu oluşturma
CREATE TABLE Mayis_Hesap_Ozeti (
    id INT,
    column1 DATE,
    column2 VARCHAR(10),
    column3 VARCHAR(50),
    column4 VARCHAR(100),
    column5 INT
);

-- Verileri ekleme
INSERT INTO Mayis_Hesap_Ozetim (id, column1, column2, column3, column4, column5) VALUES
(1, '2026-05-09', 'Gelen', 'Burs', 'KYK Burs Ödemesi', 4000),
(2, '2026-05-15', 'Gelen', 'Maas', 'Genç İŞKUR', 10400),
(3, '2026-05-22', 'Giden', 'Kira', 'Kira', 12500),
(4, '2026-05-10', 'Gelen', 'Transfer', 'Harclik', 2000),
(5, '2026-05-12', 'Gelen', 'Burs', 'Kültür Ocağı Vakfı Bursu', 2750),
(6, '2026-05-03', 'Giden', 'Kredi Kartı Ödemesi', 'Enpara Kredi Kartı Borç Ödemesi', 4500),
(7, '2026-05-14', 'Giden', 'Kredi Kartı Ödemesi', 'X Bankası Ek Kart Ödemesi', 1200),
(8, '2026-05-02', 'Giden', 'Ulaşım', 'İzmirimKart', 200),
(9, '2026-05-06', 'Giden', 'Ulaşım', 'Yakıt Alışverişi', 350),
(10, '2026-05-04', 'Giden', 'Yemek', 'Yemeksepeti - Burger King', 2500),
(11, '2026-05-08', 'Giden', 'İçecek', 'X Kahve', 90),
(12, '2026-05-15', 'Giden', 'Yemek', 'Arbys Zinciri', 850),
(13, '2026-05-05', 'Giden', 'Market', 'Migros Sanal Market', 1100),
(14, '2026-05-12', 'Giden', 'Market', 'Şok Market Alışverişi', 450),
(15, '2026-05-12', 'Giden', 'Eğlence', 'Konser Bileti', 3000),
(16, '2026-05-13', 'Gelen', 'İade', 'Öğrenci Kampanyası İadesi', 555);


EXEC sp_rename 'Mayis_Hesap_Ozeti.column1', 'Tarih', 'COLUMN';
EXEC sp_rename 'Mayis_Hesap_Ozeti.column2', 'Islem_Turu', 'COLUMN';
EXEC sp_rename 'Mayis_Hesap_Ozeti.column3', 'Kategori', 'COLUMN';
EXEC sp_rename 'Mayis_Hesap_Ozeti.column4', 'Aciklama', 'COLUMN';
EXEC sp_rename 'Mayis_Hesap_Ozeti.column5', 'Tutar', 'COLUMN';
SELECT * FROM Mayis_Hesap_Ozeti;

SELECT * FROM Mayis_Hesap_Ozeti 
WHERE Islem_Turu = 'Gelen';

SELECT * FROM Mayis_Hesap_Ozeti 
WHERE Islem_Turu = 'Giden';

SELECT * INTO Gelen_Islemler FROM Mayis_Hesap_Ozeti WHERE Islem_Turu = 'Gelen'
SELECT * INTO Giden_Islemler FROM Mayis_Hesap_Ozeti WHERE Islem_Turu = 'Giden'

-- Gelen tablosunu kontrol et
SELECT * FROM Gelen_Islemler;

-- Giden tablosunu kontrol et
SELECT * FROM Giden_Islemler;

SELECT * FROM Gelen_Islemler;
SELECT * FROM Giden_Islemler;