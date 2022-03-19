-- cities in the United States that have Michelin rated restaurants including those cities' income and population
SELECT mich.city, count(DISTINCT mich.name) AS "Number of Restaurants", p.census_2020 AS "Population", COALESCE((SELECT count(*) AS "Three Star" from michelin_restaurants AS m
WHERE stars = 3
AND m.city_id = mich.city_id																	
GROUP BY city_id
),0) AS "Three Star Restaurants", ROUND(avg(stars),4) AS "Average Star Rating", ROUND(avg(i.median),2) AS "Average Median Income", ROUND(avg(i.mean),2) AS "Average Income" from michelin_restaurants AS mich
JOIN income as i
ON mich.city_id = i.city_id
LEFT JOIN population as p
ON p.city_id = mich.city_id
GROUP BY mich.city, mich.city_id, p.census_2020
ORDER BY 4 DESC

SELECT city, count(*) AS "Three Star" from michelin_restaurants
WHERE stars = 3
GROUP BY city

SELECT mich.city, count(DISTINCT mich.name) AS "Number of Restaurants", COALESCE((SELECT count(*) AS "Three Star" from michelin_restaurants AS m
WHERE stars = 3
AND m.city_id = mich.city_id																	
GROUP BY city_id
),0) AS "Three Star Restaurants", ROUND(avg(stars),4) AS "Average Rating" from michelin_restaurants AS mich
JOIN population as p
ON mich.city_id = p.city_id
GROUP BY mich.city, mich.city_id
-- ORDER BY 3 DESC
--ROUND(avg(i.median),2) AS "Average Median Income", ROUND(avg(i.mean),2) AS "Average Income" 

SELECT * from population

