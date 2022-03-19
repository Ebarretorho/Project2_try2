ALTER TABLE population ADD COLUMN city_id integer

ALTER TABLE michelin_restaurants ADD COLUMN city_id integer

ALTER TABLE income ADD COLUMN city_id integer

-------
UPDATE population AS p SET city_id = c.city_id from ( 
SELECT city_name, city_id, state from city) AS c
WHERE p.city = c.city_name
AND p.state = c.state

UPDATE income AS i SET city_id = c.city_id from ( 
SELECT city_name, city_id, state from city) AS c
WHERE i.city = c.city_name
AND i.state_name = c.state

UPDATE michelin_restaurants AS m SET city_id = c.city_id from ( 
SELECT city_name, city_id, state from city) AS c
WHERE m.city = c.city_name
AND m.state = c.state



