--1.feladat
SELECT  FOGLALAS_PK,
        METTOL,
        DATEADD(MONTH,1,METTOL) AS 'Módosított kezdődátum'
FROM FOGLALAS
WHERE UGYFEL_FK LIKE 'emese'