-- ЗАДАНИЕ 1 --


-- Вывести имя вида species.species_name с наименьшим id species.species_id
-- Результат будет соответствовать букве «м».
SELECT species_name
FROM species
ORDER BY species_id
LIMIT 1;
-- МАЛЫШ

-- Вывести имя вида species.species_name с количеством представителей species.species_amount более 1800. 
-- Результат будет соответствовать букве «б».
SELECT species_name
FROM species
WHERE species_amount > 1800;
-- РОЗА

-- Вывести имя вида species.species_name, начинающегося на «п» и относящегося species.type_id = 5
-- Результат будет соответствовать букве «о».
SELECT species_name
FROM species
WHERE species_name LIKE 'п%' AND type_id = 5;
-- ПОДСОЛНУХ


-- Вывести имя вида species.species_name, заканчивающееся на «са», или количество представителей 
-- species.species_amount которого равно 5. Результат будет соответствовать букве «в»
SELECT species_name
FROM species
WHERE species_name LIKE '%са' OR species_amount = 5;
-- ЛИСА
