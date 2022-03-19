CREATE TABLE city(
city_id serial primary key,
city_name VARCHAR(100))

INSERT INTO city(city_name)
SELECT DISTINCT city, state from population
WHERE city like 'Washington%'

INSERT INTO city(city_name)
SELECT DISTINCT i.city from city
RIGHT JOIN income AS i
ON city.city_name = i.city
WHERE city.city_name IS NULL

INSERT INTO city(city_name)
SELECT DISTINCT i.city from city
RIGHT JOIN michelin_restaurants AS i
ON city.city_name = i.city
WHERE city.city_name IS NULL


SELECT * from city
WHERE city_name LIKE 'Washington%'

SELECT * from michelin_restaurants
WHERE city LIKE 'Washington%'

UPDATE income SET city='Washington, D.C.'
WHERE city = 'Washington'
AND state_name = 'District of Columbia'

UPDATE population SET city='Washington, D.C.'
WHERE city = 'Washington'
AND state = 'District of Columbia'

SELECT city, state_name from income
WHERE city = 'Washington'

