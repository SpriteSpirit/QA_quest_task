-- ЗАДАНИЕ 3 --


-- Вывести имя вида species.species_name появившегося появившегося с малышом в один день species.date_start
-- Результат будет соответствовать букве «ч»
SELECT s1.species_name
FROM species AS s1
WHERE date_start = (
	SELECT s2.date_start
	FROM species AS s2
	WHERE s2.species_name = 'малыш'
	) AND s1.species_name <> 'малыш';
-- КОШКА


-- Вывести имя вида species.species_name, расположенного в здании с наибольшей площадью places.place_size
-- Зданиями считаются только дом и сарай. Три таблицы — species, species_in_places и places
-- Результат будет соответствовать букве «ж»
SELECT s.species_name
FROM species AS s
JOIN species_in_places AS sip ON sip.species_id = s.species_id
JOIN places AS p ON p.place_id = sip.place_id
WHERE p.place_name IN ('дом', 'сарай') 
ORDER BY p.place_size DESC
LIMIT 1;
-- ЛОШАДЬ


-- Вывести имя вида species.species_name, относящегося к 5 по численности виду places.place_name='дом'
-- Использовать три таблицы — species, species_in_places и places
-- Результат будет соответствовать букве «ш».
SELECT s.species_name
FROM species s
JOIN species_in_places sip ON s.species_id = sip.species_id
JOIN places p ON sip.place_id = p.place_id
WHERE p.place_name = 'дом'
ORDER BY s.species_amount DESC
LIMIT 1 OFFSET 4;
-- ПОПУГАЙ


-- Вывести имя сказочного вида species.species_name
-- не расположенного ни в одном месте. Вид считается сказочным, если его статус — fairy
-- species.species_status = 'fairy'. Использовать две таблицы — species и species_in_places
-- Результат будет соответствовать букве «т».
SELECT s.species_name
FROM species s
LEFT JOIN species_in_places sip ON s.species_id = sip.species_id
WHERE s.species_status = 'fairy' AND sip.place_id IS NULL;
-- ЕДИНОРОГ
