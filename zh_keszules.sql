SELECT  v.USERNEV,
        COUNT(DISTINCT szh.szallas_id)
FROM Foglalas f LEFT JOIN Vendeg v ON f.ugyfel_fk = v.USERNEV
                LEFT JOIN Szoba sz  on f.szoba_fk = sz.szoba_id
                LEFT JOIN szallashely szh ON sz.szallas_fk = szh.szallas_id
GROUP BY v.USERNEV