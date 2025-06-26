SELECT * FROM athletes;

SELECT Country,
       COUNT(*) AS total_athletes
FROM athletes
GROUP BY Country
ORDER BY total_athletes DESC;

SELECT TeamCountry,
       SUM(GOLD) AS total_gold,
       SUM(SILVER) AS total_silver,
       SUM(BRONZE) AS total_bronze
FROM medals
GROUP BY TeamCountry
ORDER BY total_gold DESC, total_silver DESC, total_bronze DESC;


SELECT Discipline,
       AVG(Female) AS avg_female,
       AVG(Male) AS avg_male
FROM entriesgender
GROUP BY Discipline
ORDER BY avg_female DESC, avg_male DESC;


SELECT Discipline,
       AVG(Female) AS avg_female,
       AVG(Male) AS avg_male
FROM entriesgender
WHERE Discipline = 'Archery'
GROUP BY Discipline;
