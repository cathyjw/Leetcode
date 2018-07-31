SELECT SUM(i1.TIV_2016) AS TIV_2016
FROM insurance i1
WHERE 1<(SELECT COUNT(*)
        FROM insurance i2
        WHERE i2.TIV_2015=i1.TIV_2015) AND 1=(SELECT COUNT(*) 
                                              FROM insurance i3
                                              WHERE i3.LAT=i1.LAT AND i3.LON=i1.LON);