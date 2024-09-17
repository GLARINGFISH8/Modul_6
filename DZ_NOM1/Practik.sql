-- 1

CREATE TABLE IF NOT EXISTS `MonstersIncEmployees` (
	`EmployeeID` TINYINT NOT NULL AUTO_INCREMENT,
	`MonsterName` VARCHAR(75) NOT NULL,
	`Type` VARCHAR(50) NOT NULL DEFAULT 'Монстр',
	`Department` VARCHAR(100) NOT NULL DEFAULT 'Нулевой отдел',
	`MonsterColor` VARCHAR(50) NOT NULL,
	
	PRIMARY KEY(`EmployeeID`));
	
	

ALTER TABLE `MonstersIncEmployees` DROP COLUMN `MonsterColor`;

ALTER TABLE `MonstersIncEmployees`
ADD `ScareLevel` INT;


INSERT INTO `MonstersIncEmployees` (`MonsterName`, `Type`, `Department`, `ScareLevel`)
VALUES('Mike Wazowski', 'Пугало', 'Отдел пуганий', 7);

INSERT INTO `MonstersIncEmployees` (`MonsterName`, `Type`, `Department`, `ScareLevel`)
VALUES('James P. Sullivan', 'Пугало', 'Отдел пуганий', 10);

INSERT INTO `MonstersIncEmployees` (`MonsterName`, `Type`, `Department`, `ScareLevel`)
VALUES('Randall Boggs', 'Пугало', 'Отдел пуганий', 8);

INSERT INTO `MonstersIncEmployees` (`MonsterName`, `Type`, `Department`, `ScareLevel`)
VALUES('Celia Mae', 'Администратор', 'Отдел поддержки', 3);

INSERT INTO `MonstersIncEmployees` (`MonsterName`, `Type`, `Department`, `ScareLevel`)
VALUES('Roz', 'Администратор', 'Отдел документации', 2);

INSERT INTO `MonstersIncEmployees` (`MonsterName`, `Type`, `Department`, `ScareLevel`)
VALUES('George Sanderson', 'Пугало', 'Отдел пуганий', 5);

INSERT INTO `MonstersIncEmployees` (`MonsterName`, `Type`, `Department`, `ScareLevel`)
VALUES('Henry J. Waternoose', 'Администратор', 'Управление', 4);

INSERT INTO `MonstersIncEmployees` (`MonsterName`, `Type`, `Department`, `ScareLevel`)
VALUES('Fungus', 'Помощник', 'Отдел пуганий', 6);

INSERT INTO `MonstersIncEmployees` (`MonsterName`, `Type`, `Department`, `ScareLevel`)
VALUES('Needleman', 'Помощник', 'Отдел документации', 4);

INSERT INTO `MonstersIncEmployees` (`MonsterName`, `Type`, `Department`, `ScareLevel`)
VALUES('Smitty', 'Помощник', 'Отдел поддержки', 5);



EmployeesCREATE TABLE IF NOT EXISTS `Employees` (
	`EmployeeID` TINYINT NOT NULL AUTO_INCREMENT,
	`FirstName` VARCHAR(50) NOT NULL,
	`LastName` VARCHAR(50) NOT NULL,
	`DateOfBirth` INT NOT NULL,
	`HireDate` INT NOT NULL,
	`MiddleName` VARCHAR(50) NOT NULL,
	`Salary` MEDIUMINT,
	
	PRIMARY KEY(`EmployeeID`));
	
	


-- 2


ALTER TABLE `Employees`
ADD COLUMN  `Position` VARCHAR(100) AFTER `MiddleName`;

ALTER TABLE `Employees` DROP COLUMN `MiddleName`;



INSERT INTO `Employees`(`FirstName`, `LastName`, `DateOfBirth`, `HireDate`, `Position`,`Salary`)
VALUES('Иван', 'Иванов', '1980-01-15', '2010-06-01', 'Менеджер', 75000.00);

INSERT INTO `Employees`(`FirstName`, `LastName`, `DateOfBirth`, `HireDate`, `Position`,`Salary`)
VALUES('Анна', 'Петрова', 1985.07.23, 2012.08.Employees15, 'Инженер', 68000.00);

INSERT INTO `Employees`(`FirstName`, `LastName`, `DateOfBirth`, `HireDate`, `Position`,`Salary`)
VALUES('Михаил', 'Смирнов', 1990-03-12, 2015-01-30, 'Программист', 72000.00);

INSERT INTO `Employees`(`FirstName`, `LastName`, `DateOfBirth`, `HireDate`, `Position`,`Salary`)
VALUES('Елена', 'Сидорова', 1992-05-14, 2016-09-21, 'Аналитик', 70000.00);

INSERT INTO `Employees`(`FirstName`, `LastName`, `DateOfBirth`, `HireDate`, `Position`,`Salary`)
VALUES('Алексей', 'Кузнецов', 1975-11-02, 2005-10-10, 'Руководитель отдела', 90000.00);

INSERT INTO `Employees`(`FirstName`, `LastName`, `DateOfBirth`, `HireDate`, `Position`,`Salary`)
VALUES('Ольга', 'Васильева', 1988-04-22, 2014-03-05, 'Маркетолог', 65000.00);

INSERT INTO `Employees`(`FirstName`, `LastName`, `DateOfBirth`, `HireDate`, `Position`,`Salary`)
VALUES('Дмитрий', 'Попов', 1993-08-19, 2017-11-11, 'Программист', 71000.00);

INSERT INTO `Employees`(`FirstName`, `LastName`, `DateOfBirth`, `HireDate`, `Position`,`Salary`)
VALUES('Мария', 'Козлова', 1983-02-10, 2010-04-07, 'HR-менеджер', 66000.00);

INSERT INTO `Employees`(`FirstName`, `LastName`, `DateOfBirth`, `HireDate`, `Position`,`Salary`)
VALUES('Сергей', 'Лебедев', 1979-12-01, 2008-07-01, 'Менеджер проектов', 80000.00);

INSERT INTO `Employees`(`FirstName`, `LastName`, `DateOfBirth`, `HireDate`, `Position`,`Salary`)
VALUES('Наталья', 'Морозова', 1986-09-09, 2013-12-18, 'Дизайнер', 69000.00);


