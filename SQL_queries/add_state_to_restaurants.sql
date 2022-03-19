SELECT p.city, p.city_id, c.city_name, c.city_id
from population
UPDATE population AS p SET city_id = c.city_id from (SELECT * from city) AS c
WHERE p.city = c.city_name

SELECT * from population

UPDATE michelin_restaurants AS m SET state = i.state_name from (SELECT state_name, zip_code from income) AS i
WHERE m.zipcode = i.zip_code

Select * from michelin_restaurants