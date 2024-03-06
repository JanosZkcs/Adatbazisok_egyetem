--1.feladat
/*SELECT  FOGLALAS_PK,
        METTOL,
        DATEADD(MONTH,1,METTOL) AS 'Módosított kezdődátum'
FROM FOGLALAS
WHERE UGYFEL_FK LIKE 'emese'*/

--2.feladat
SELECT  szh.SZALLAS_ID, 
        szh.SZALLAS_NEV,
        COUNT(sz.KLIMAS) AS 'Klímás szobák'
FROM Szallashely szh JOIN Szoba sz ON sz.SZALLAS_FK = szh.SZALLAS_ID
WHERE sz.KLIMAS = 'i'
GROUP BY szh.SZALLAS_ID, szh.SZALLAS_NEV