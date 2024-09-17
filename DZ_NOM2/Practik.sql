DROP TABLE IF EXISTS `Movie_Actors`;
DROP TABLE IF EXISTS `Movies`;
DROP TABLE IF EXISTS `Actors`;



CREATE TABLE `Movies` (
	`id` INT AUTO_INCREMENT,
	`title` VARCHAR(50),
	`release_year` YEAR,
	`genre` VARCHAR(50),
	`rating` DECIMAL(3,1),
	
	PRIMARY KEY(`id`));
	

CREATE TABLE `Actors` (
	`id` INT AUTO_INCREMENT,
	`name` VARCHAR(50),
	`birth_year` YEAR,
	`nationality` VARCHAR(50),
	
	PRIMARY KEY(`id`));
	
	
	
CREATE TABLE `Movie_Actors` (
	`movie_id` INT,
	`actor_id` INT,
	`role` VARCHAR(50),

	FOREIGN KEY(`movie_id`) REFERENCES `Movies`(`id`),
	FOREIGN KEY (`actor_id`) REFERENCES `Actors`(`id`));
	
	
INSERT INTO `Movies` (`id`, `title`, `release_year`, `genre`, `rating`)
	VALUES(1, 'Дед', '2000-01-01', 'Драмма', 10);
	
INSERT INTO `Movies` (`title`, `release_year`, `genre`, `rating`)VALUES 
	('Головоломка', '2000-01-01', 'Драмма', 10),
	('Дедпул', '2000-02-01', 'Комедия', 8),
	('Побег', '2001-01-01', 'Драмма', 10),
	('Дюна', '2002-01-01', 'Комедия', 10),
	('Чужой', '2002-01-01', 'Ужасы', 5),
	('Собиратель', '2003-01-01', 'Фантастика', 3),
	('Дикий запад', '2003-01-01', 'Ужасы', 2),
	('Гадкий я', '2004-01-01', 'Драма', 10),
	('Новые времена', '2004-01-01', 'Комедия', 3),
	('Одержимость', '2005-01-01', 'Фантастика', 10),
	('Касабланка', '2005-01-01', 'Мелодрамма', 9),
	('Престиж', '2005-01-01', 'Мелодрамма', 10),
	('Отступники', '2005-01-01', 'Драмма', 8),
	('Ограбление', '2005-01-01', 'Драмма', 10),
	('Свадьба', '2005-01-01', 'Драмма', 10);
	
	
	
-- 1.1

SELECT `title` FROM `Movies` 
	WHERE `release_year` > 2010 AND `rating` > 8
	ORDER BY `rating` DESC;
	
	
-- 1.2

SELECT `genre` FROM `Movies`
	GROUP BY `genre`
	ORDER BY `genre` ASC;
	
	
	
-- 1.3

SELECT `title` FROM `Movies`
	ORDER BY `rating` DESC
	LIMIT 10;
	
	
-- 1.4

SELECT * FROM `Actors`
	WHERE `birth_year` < 1980
	ORDER BY birth_year DESC;
	
	
	
-- 1.5

SELECT * FROM `Movies`
	WHERE `genre` = 'Sci-Fi'
		ORDER BY `title` ASC;
		
		
-- 1.6

SELECT `nationality` FROM `Actors`
	GROUP BY `nationality`
	ORDER BY `nationality` DESC;
	
	
	
-- 1.7

SELECT `title`, `rating` FROM `Movies`
	WHERE `rating` < 5
	ORDER BY `rating` ASC;
	
	
	
-- 1.8 

SELECT * FROM `Movies`
	ORDER BY `release_year`
	LIMIT 5;
	
	
-- 1.9 

SELECT * FROM `Actors`
	ORDER BY `birth_year` DESC
	LIMIT 3;
	

-- 2.1

SELECT AVG(`rating`) FROM `Movies`
	GROUP BY `genre`
	ORDER BY AVG(`rating`) DESC;
	
	
-- 2.2

SELECT `release_year`, COUNT(*) FROM `Movies`
	GROUP BY `release_year` 
	ORDER BY `release_year` ASC;
	
	
	
-- 2.3

SELECT `genre`, COUNT(*) FROM `Movies`
	GROUP BY `genre`
	ORDER BY COUNT(*) ASC;
	
	
-- 2.4

SELECT `genre`, SUM(`rating`) FROM `Movies`
	GROUP BY `genre`
	HAVING SUM(`rating`) > 50;
	
	
-- 2.5

SELECT `release_year` FROM `Movies`
	WHERE `rating` > 7
	GROUP BY `release_year`
	HAVING COUNT(*) > 5;
	

CREATE TABLE `Library` (
	`subscriptions` CHAR(50),
	`sb_id` TINYINT AUTO_INCREMENT,
	`sb_subscriber` TINYINT,
	`sb_book` TINYINT,
	`sb_start` YEAR,
	`sb_finish` YEAR,
	`sb_is_active` CHAR(50) DEFAULT 'N',
	
	PRIMARY KEY(`sb_id`),
	FOREIGN KEY (`sb_subscriber`) REFERENCES `NONE`,
	FOREIGN KEY (`sb_book`) REFERENCES `NONE`);
	

-- 2.6	
SELECT `sb_book` FROM `Library`
	GROUP BY `sb_book`
	HAVING `sb_is_active` = 'Y';
	
	
-- 2.7
SELECT COUNT(*) FROM `Library`
	GROUP BY `subscriptions`;
	
	
	
-- 3.1

SELECT `genre` FROM `Movies`
	GROUP BY `genre` DESC
	HAVING `rating` > 6.5 AND COUNT(*) > 10;
	
	
	
-- 3.2

SELECT `release_year`, MIN(`rating`) FROM `Movies`
	GROUP BY `release_year` ASC
	HAVING COUNT(*) = 3;
	
	
	

-- 3.3

SELECT `name`, MAX(`role`) FROM `Actors`
	WHERE `role` >= 5
	GROUP BY `id`
	ORDER BY `role` DESC;
	
	
-- 3.4

SELECT AVG(`rating`) FROM `Movies`
	WHERE `release_year` < 2000
	GROUP BY `genre`
	HAVING COUNT(*) > 3;
	
	

-- 3.5


SELECT `genre`, MIN(`rating`) FROM `Movies`
	GROUP BY `genre`
	HAVING COUNT(*) >= 8;
	
	
	
	
	
	
	
	
	
	
