USE `seschool_05`;

DROP TABLE IF EXISTS `books_table`;

CREATE TABLE `books_table` (
	`Name` VARCHAR(64) NOT NULL,
	`Author` VARCHAR(64),
	`Year` INT UNSIGNED,
	`Reader` VARCHAR(64),
	
	PRIMARY KEY(`Name`));
	
-- 4	
SHOW TABLES;

-- 5
DESC books_table;


-- 6

INSERT INTO `books_table` (`Name`, `Author`, `Year`, `Reader`)
	VALUES('Война и мир', 'Толстой Л.Н', 1990, 'Сидорова И.Д.' );


-- 7

SELECT * FROM `books_table`;


-- 8

INSERT INTO `books_table` (`Name`, `Author`, `Year`, `Reader`)
VALUES('Капитанская дочка', 'Пушкин А.С', 2004, 'Дмитриев С.Л.');

INSERT INTO `books_table` (`Name`, `Author`, `Year`, `Reader`)
VALUES('Горе от ума', 'Грибоедов А.С', 2012, NULL);

SELECT * FROM `books_table`;



-- 9

ALTER TABLE `books_table` ADD `Publisher` VARCHAR(64);


-- 10

DESC `books_table`;


-- 11 

ALTER TABLE `books_table` MODIFY `Publisher` VARCHAR(64)
	DEFAULT 'Художественная литература';
	
DESC `books_table`;



-- 12

INSERT INTO `books_table` (`Name`, `Author`, `Year`, `Reader`)
	VALUES('Три сестры', 'Чехов А.П.', 2000, 'Малинин Д.С.');
	
SELECT * FROM `books_table`;


-- 13

UPDATE `books_table` SET
	`Reader` = 'Иванова А.В.',
	`Publisher` = 'Русская литература'
	WHERE `Name` = 'Горе от ума';
	
	
SELECT * FROM `books_table`;


-- 14

DELETE FROM `books_table`
	WHERE `Name` = 'Война и мир';
	
SELECT * FROM `books_table`;


-- 15

INSERT INTO `books_table` (`Name`, `Author`, `Year`, `Reader`)
	VALUES(NULL, 'Некрасов Н.А.', 1998, 'Петров О.Д.');
	
	
-- 16

DELETE FROM  TABLE `books_table`;


-- 17

DROP TABLE `books_table`;

-- 18

DROP DATABASE books_database;
