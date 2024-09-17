USE `seschool_05`;

DROP TABLE IF EXISTS `Students_table`;

CREATE TABLE `Students_table`(
	`№` INT AUTO_INCREMENT NOT NULL,
	`Фамилия` VARCHAR(20) NOT NULL,
	`пол` CHAR(20) NOT NULL,
	`Дата_рождения` YEAR NOT NULL,
	`СНИСЛ` VARCHAR(20) UNIQUE,
	`Курс` INT NOT NULL DEFAULT 1 ,
	`Группа` VARCHAR(20) NOT NULL,
	`Средний_балл` FLOAT NOT NULL,
	`Хобби` VARCHAR(20),
	
	PRIMARY KEY(`№`));
	
	
	
INSERT INTO `Students_table` (`№`, `Фамилия`, `пол`, `Дата_рождения`, `СНИСЛ`, `Курс`, `Группа`, `Средний_балл`, `Хобби`)
	VALUES(1, 'Горбунова Е.А.', 'ж', '1993-07-21', '128-389-457 23', 3, 'АУС-36', 86.3, 'Плавание');
	
	
INSERT INTO `Students_table` (`Фамилия`, `пол`, `Дата_рождения`, `СНИСЛ`, `Курс`, `Группа`, `Средний_балл`, `Хобби`) VALUES
	('Ильин Л.И.', 'м', '1993-12-25', '279-237-417 25', 3, 'АУС-35', 98.1,'Чтение'),
	('Борисенко С.Д.', 'м', '1994-11-01', '872-954-736 94', 2, 'АВМ-41', 92.4, 'Шахматы'),
	('Макаров С.С.', 'м', '1995-05-23', '864-278-354 11', 1, 'ЭОП-118', 82.0, 'Альпинизм'),
	('Курилин Д.В.', 'м', '1992-04-16', '711-257-696 85', 3, 'АУС-36', 63.7, 'Плавание'),
	('Иноземцева Д.Д.', 'ж', '1993-08-12', '112-598-478 23', 3, 'АУС-36', 91.8, 'Дайвинг'),
	('Шипунов Р.Е.', 'м', '1995-03-04', '996-478-258 75', 1, 'ЭОП-238', 75.4, NULL),
	('Скородумов Д.Б.', 'м', '1994-01-14', '359-489-269 66', 1, 'ЭОП-118', 72.6, 'Бильярд'),
	('Пикулина С.А.', 'ж', '1995-03-02', '234-217-598 89', 1, 'ЭОП-238', 86.4, 'Шахматы'),
	('Сафронова М.Д.', 'ж', '1993-08-19', '887-555-124 17', 3, 'АУС-36', 90.1, 'Плавание'),
	('Ковшова Э.А.', 'ж', '1995-09-26', '469-489-557 12', 1, 'ЭОП-238', 65.8, 'Бильярд'),
	('Зайцев К.С.', 'м', '1993-12-15', '689-565-487 38', 3, 'АУС-35', 72.6, 'Чтение'),
	('Антонова С.Д.', 'ж', '1992-12-19', '773-557-986 12', 3, 'АУС-35', 99.6, NULL),
	('Кондрашова Е.В.', 'ж', '1993-02-08', '669-476-123 76', 3, 'АУС-35', 97.7, 'Чтение'),
	('Кукушкина Е.В.', 'ж', '1995-10-14', '369-568-559 56', 2, 'АВМ-41', 90.2, 'Шахматы');
	
-- 1
SELECT * FROM `Students_table`
	WHERE `пол` = 'ж';
	
-- 2

SELECT * FROM `Students_table`
	WHERE `курс` = 3;
	
	
-- 3

SELECT * FROM `Students_table`
	WHERE `Дата_рождения` > '1994-02-01';
	
	
-- 4

SELECT * FROM `Students_table`
	WHERE `Средний_балл` BETWEEN 70 AND 85;
	
	
-- 5

SELECT * FROM `Students_table`
	WHERE `Курс`  IN (2, 3);
	
	
-- 6 

SELECT * FROM `Students_table`
	WHERE `Фамилия` LIKE 'К%' OR 'Л%';
	
	
-- 7 

SELECT * FROM `Students_table`
	WHERE `Группа` LIKE 'АУС%' AND `пол` = 'ж';
	
	

-- 8

SELECT * FROM `Students_table`
	WHERE `Хобби` IS NULL;
	
	
-- 9

SELECT `Курс` FROM `Students_table`
	GROUP BY `Курс`;
	
	
-- 10 

SELECT * FROM `Students_table`
	ORDER BY `Средний_балл` ASC
	LIMIT 5
	OFFSET 10;
	
-- 11

SELECT * FROM `Students_table`
	ORDER BY `Средний_балл` ASC
	LIMIT 10;
	
	
-- 12
-- а
SELECT COUNT(*) FROM `Students_table`;

-- б
SELECT COUNT(*) FROM `Students_table`
	WHERE `Хобби` IS NULL;
	
-- в	
SELECT MAX(`Средний_балл`) FROM `Students_table`;

-- г
SELECT MIN(`Средний_балл`) FROM `Students_table`;

-- д
SELECT AVG(`Средний_балл`) FROM `Students_table`;

-- 13

SELECT COUNT(*) FROM `Students_table`
	GROUP BY `Курс`;
	
	
-- 14

SELECT AVG(`Средний_балл`) FROM `Students_table`
	GROUP BY `пол`;
	
	
-- 15

SELECT * FROM `Students_table`
	WHERE `пол` = 'ж'
	GROUP BY `пол`
	HAVING `Курс` = 3 AND `Дата_рождения` >= 1993 ;
	
	
	
-- 16 

SELECT `Фамилия`, `Средний_балл` CASE
	WHEN 	`Средний_балл` BETWEEN  0 AND 20 'Неудовлеторительно'
	WHEN 	`Средний_балл` BETWEEN  21 AND 50 'Удовлетворительно'
	WHEN 	`Средний_балл` BETWEEN   51AND 60 'Хорошо'
	WHEN 	`Средний_балл` BETWEEN  61 AND 100 'Отлично'
	
 END AS 'Оценка'
 FROM `Students_table`;
	
	

	
	

	 
	
	
	
	
	
	
	
	
	
	
	