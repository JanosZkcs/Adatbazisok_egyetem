--1.feladat
/*SELECT  FOGLALAS_PK,
        METTOL,
        DATEADD(MONTH,1,METTOL) AS 'Módosított kezdődátum'
FROM FOGLALAS
WHERE UGYFEL_FK LIKE 'emese'*/

--2.feladat
/*SELECT  szh.SZALLAS_ID, 
        szh.SZALLAS_NEV,
        COUNT(sz.KLIMAS) AS 'Klímás szobák'
FROM Szallashely szh JOIN Szoba sz ON szh.SZALLAS_ID = sz.SZALLAS_FK
WHERE sz.KLIMAS = 'i'
GROUP BY szh.SZALLAS_ID, szh.SZALLAS_NEV*/

--3.feladat
SELECT  szh.SZALLAS_NEV,
        COUNT(f.FOGLALAS_PK) AS 'Foglalások száma'
FROM FOGLALAS f RIGHT JOIN Szoba sz ON f.SZOBA_FK = sz.SZOBA_ID
                JOIN Szallashely szh ON sz.SZALLAS_FK = szh.SZALLAS_ID
GROUP BY szh.SZALLAS_NEV