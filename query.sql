SELECT * FROM vgsales

SELECT "Year", COUNT(*) as "Quantidade"
FROM vgsales
GROUP BY "Year"
ORDER BY "Year" DESC


SELECT "Genre", SUM("Global_Sales") AS "Soma de vendas"
FROM vgsales 
WHERE "Year" > 1999 and "Year" < 2011
GROUP BY Genre 
ORDER BY "Soma de vendas" DESC


SELECT "Name",
       CASE
           WHEN COUNT(*) > 1 THEN 'Multiplataforma'
           ELSE 'Jogo único'
       END AS "Quantidade de vezes"
FROM vgsales
GROUP BY "Name";


SELECT "Type", COUNT(*) AS "Total", SUM("Global_Sales") AS "Soma de vendas"
FROM (
    SELECT "Global_Sales", "Name",
           CASE
               WHEN COUNT(*) > 1 THEN 'Multiplataforma'
               ELSE 'Jogo único'
           END AS "Type"
    FROM vgsales
    GROUP BY "Name"
) 
GROUP BY "Type";

SELECT "Publisher", "Global_Sales"
FROM vgsales
group BY "Publisher"
ORDER BY "Global_Sales" DESC

SELECT "Year", "Global_Sales"
FROM vgsales
group BY "Year"
ORDER BY "Global_Sales" DESC

SELECT (SUM("NA_Sales") / SUM("Global_Sales")) * 100 AS "NA", (SUM("EU_Sales")/ SUM("Global_Sales")) * 100 AS "EU", (SUM("JP_Sales")/ SUM("Global_Sales")) * 100 AS "JP", (SUM("Other_Sales")/ SUM("Global_Sales")) * 100 AS "Other"