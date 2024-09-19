-- ЗАДАНИЕ 2 --


-- Вывести имя вида species.species_name появившегося в 2023 году species.date_start
-- Результат будет соответствовать букве «ы»
SELECT species_name
FROM species
WHERE to_char(date_start,'YYYY') = '2023';
-- ОБЕЗЬЯНА


-- Вывести имя вида species.species_name отсутствующего species_status = 'absent' вида, 
-- расположенного в месте с places.place_id = 3
-- Для написания запроса вам понадобятся две таблицы — species и species_in_places
-- Результат будет соответствовать букве «с».
SELECT s.species_name
FROM species AS s 
JOIN species_in_places AS sip
ON s.species_id = sip.species_id
WHERE s.species_status = 'absent' AND sip.place_id = 3;
-- ЯБЛОКО


-- Вывести имя вида species.species_name, расположенного в доме places.place_name = 'дом'
-- и появившегося в мае species.date_start, а также количество представителей вида 
-- species.species_amount. Три таблицы — species, species_in_places и places
-- Название вида будет соответствовать букве «п».
SELECT s.species_name, s.species_amount
FROM species AS s 
JOIN species_in_places AS sip 
ON s.species_id = sip.species_id
JOIN places AS p 
ON p.place_id = sip.place_id
WHERE p.place_name = 'дом' AND to_char(s.date_start, 'MM') = '05';
-- СОБАКА


-- Вывести имя вида species.species_name,состоящее из двух слов (содержит пробел) 
-- Результат будет соответствовать знаку «!».
SELECT species_name
FROM species
WHERE species_name LIKE '% %';
-- ГОЛУБАЯ РЫБА
