USE passport1;

SELECT id, passport_number FROM passport
WHERE passport_number LIKE '%FP%'
ORDER BY id;

SELECT record_number FROM passport ORDER BY date_of_issue DESC LIMIT 4;

SELECT record_number, stuff_id, COUNT(stuff_id) AS Count_Stuff,
AVG(price) AS Avg_Price
FROM passport
GROUP BY stuff_id;
