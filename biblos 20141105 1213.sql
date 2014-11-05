-- Скрипт сгенерирован Devart dbForge Studio for MySQL, Версия 5.0.97.1
-- Домашняя страница продукта: http://www.devart.com/ru/dbforge/mysql/studio
-- Дата скрипта: 05.11.2014 12:13:36
-- Версия сервера: 5.5.30-log
-- Версия клиента: 4.1

-- 
-- Отключение внешних ключей
-- 
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

-- 
-- Установка кодировки, с использованием которой клиент будет посылать запросы на сервер
--
SET NAMES 'utf8';

-- 
-- Установка базы данных по умолчанию
--
USE biblos;

--
-- Описание для таблицы autor
--
DROP TABLE IF EXISTS autor;
CREATE TABLE autor (
  id INT(11) UNSIGNED NOT NULL,
  name VARCHAR(255) DEFAULT NULL,
  dt_cr DATE DEFAULT NULL,
  dt_ch DATE DEFAULT NULL,
  PRIMARY KEY (id)
)
ENGINE = MYISAM
AVG_ROW_LENGTH = 20
CHARACTER SET utf8
COLLATE utf8_general_ci;

--
-- Описание для таблицы book
--
DROP TABLE IF EXISTS book;
CREATE TABLE book (
  id INT(11) UNSIGNED NOT NULL,
  name VARCHAR(255) DEFAULT NULL,
  dt_cr DATE DEFAULT NULL,
  dt_ch DATE DEFAULT NULL,
  PRIMARY KEY (id)
)
ENGINE = MYISAM
AVG_ROW_LENGTH = 20
CHARACTER SET utf8
COLLATE utf8_general_ci;

--
-- Описание для таблицы book_author
--
DROP TABLE IF EXISTS book_author;
CREATE TABLE book_author (
  book_id INT(11) UNSIGNED NOT NULL,
  author_id INT(11) UNSIGNED NOT NULL,
  PRIMARY KEY (book_id, author_id)
)
ENGINE = MYISAM
AVG_ROW_LENGTH = 9
CHARACTER SET utf8
COLLATE utf8_general_ci;

--
-- Описание для таблицы book_reader
--
DROP TABLE IF EXISTS book_reader;
CREATE TABLE book_reader (
  book_id INT(11) UNSIGNED NOT NULL,
  reader_id INT(11) UNSIGNED NOT NULL,
  PRIMARY KEY (book_id, reader_id)
)
ENGINE = MYISAM
AVG_ROW_LENGTH = 9
CHARACTER SET utf8
COLLATE utf8_general_ci;

--
-- Описание для таблицы nrandom
--
DROP TABLE IF EXISTS nrandom;
CREATE TABLE nrandom (
  id INT(11) UNSIGNED NOT NULL,
  PRIMARY KEY (id)
)
ENGINE = MYISAM
AVG_ROW_LENGTH = 7
CHARACTER SET utf8
COLLATE utf8_general_ci;

--
-- Описание для таблицы reader
--
DROP TABLE IF EXISTS reader;
CREATE TABLE reader (
  id INT(11) UNSIGNED NOT NULL,
  name VARCHAR(255) DEFAULT NULL,
  dt_cr DATE DEFAULT NULL,
  dt_ch DATE DEFAULT NULL,
  PRIMARY KEY (id)
)
ENGINE = MYISAM
AVG_ROW_LENGTH = 20
CHARACTER SET utf8
COLLATE utf8_general_ci;

DELIMITER $$

--
-- Описание для процедуры p2
--
DROP PROCEDURE IF EXISTS p2$$
CREATE DEFINER = 'root'@'localhost'
PROCEDURE p2()
BEGIN
  /**/
  DECLARE numrow, maxval         INT;
  DECLARE r1, r2, r3, r4, r5     INT;

  SET numrow = 9;

  SELECT max(id)
  INTO
    maxval
  FROM
    `book`;
  SET r1 = floor(rand() * maxval + 1);
  SET r2 = floor(rand() * maxval + 1);
  SET r3 = floor(rand() * maxval + 1);
  SET r4 = floor(rand() * maxval + 1);
  SET r5 = floor(rand() * maxval + 1);

  (SELECT id , name,r1,'r1' FROM   book  WHERE   ID >= r1 LIMIT   1)
UNION(SELECT id , name,r2,'r2' FROM  book WHERE  ID >= r2 LIMIT   1)
UNION(SELECT id , name,r3,'r3' FROM  book WHERE  ID >= r3 LIMIT  1)
UNION(SELECT id , name,r4,'r4' FROM  book WHERE  ID >= r4 LIMIT  1)
UNION(SELECT id , name,r5,'r5' FROM  book WHERE  ID >= r5 LIMIT  1);
  SET @n := 0;
  SELECT id
       , name
       , floor(rand() * numrow + 1)
       , @n := @n + 1 AS rownum
  FROM
    book;
END
$$

--
-- Описание для функции fun1
--
DROP FUNCTION IF EXISTS fun1$$
CREATE DEFINER = 'root'@'localhost'
FUNCTION fun1()
  RETURNS char(255) CHARSET utf8 COLLATE utf8_unicode_ci
  DETERMINISTIC
BEGIN
 DECLARE n1 VARCHAR(255);
  DECLARE maxval INT;
  DECLARE r1     INT;

  SELECT max(id)
  INTO
    maxval
  FROM
    `book`;

  SET r1 = floor(rand() * maxval + 1);

  

  SELECT name
  INTO
    n1
  FROM
    book
  WHERE
    id >= r1
  LIMIT
    1;
  RETURN n1;

END
$$

DELIMITER ;

--
-- Описание для представления num_author
--
DROP VIEW IF EXISTS num_author CASCADE;
CREATE OR REPLACE 
	DEFINER = 'root'@'localhost'
VIEW num_author
AS
	select `book_author`.`book_id` AS `book_id`,count(`book_author`.`author_id`) AS `count_author_id` from `book_author` group by `book_author`.`book_id` having (`count_author_id` > 2);

--
-- Описание для представления num_reader
--
DROP VIEW IF EXISTS num_reader CASCADE;
CREATE OR REPLACE 
	DEFINER = 'root'@'localhost'
VIEW num_reader
AS
	select `book_reader`.`book_id` AS `book_id`,count(`book_reader`.`reader_id`) AS `count_reader_id` from `book_reader` group by `book_reader`.`book_id` having (`count_reader_id` > 3);

--
-- Описание для представления random_book5
--
DROP VIEW IF EXISTS random_book5 CASCADE;
CREATE OR REPLACE 
	DEFINER = 'root'@'localhost'
VIEW random_book5
AS
	select `nrandom`.`id` AS `id`,`fun1`() AS `fun1` from `nrandom`;

--
-- Описание для представления coautor3
--
DROP VIEW IF EXISTS coautor3 CASCADE;
CREATE OR REPLACE 
	DEFINER = 'root'@'localhost'
VIEW coautor3
AS
	select `book`.`id` AS `id`,`book`.`name` AS `name`,`num_author`.`count_author_id` AS `count_author_id` from (`book` join `num_author` on((`book`.`id` = `num_author`.`book_id`)));

--
-- Описание для представления reader4
--
DROP VIEW IF EXISTS reader4 CASCADE;
CREATE OR REPLACE 
	DEFINER = 'root'@'localhost'
VIEW reader4
AS
	select `book`.`id` AS `id`,`book`.`name` AS `name`,`num_reader`.`count_reader_id` AS `count_reader_id` from (`book` join `num_reader` on((`book`.`id` = `num_reader`.`book_id`)));

-- 
-- Вывод данных для таблицы autor
--
INSERT INTO autor VALUES 
  (1, 'A1', NULL, NULL),
  (2, 'A2', NULL, NULL),
  (3, 'A3', NULL, NULL),
  (4, 'A4', NULL, NULL),
  (5, 'A5', NULL, NULL);

-- 
-- Вывод данных для таблицы book
--
INSERT INTO book VALUES 
  (1, 'B1', NULL, NULL),
  (2, 'B2', NULL, NULL),
  (3, 'B3', NULL, NULL),
  (4, 'B4', NULL, NULL),
  (5, 'B5', NULL, NULL),
  (10, 'B10', NULL, NULL),
  (15, 'B15', NULL, NULL),
  (20, 'B20', NULL, NULL),
  (25, 'B25', NULL, NULL);

-- 
-- Вывод данных для таблицы book_author
--
INSERT INTO book_author VALUES 
  (1, 1),
  (1, 2),
  (1, 3),
  (2, 1),
  (2, 2),
  (3, 3),
  (4, 4);

-- 
-- Вывод данных для таблицы book_reader
--
INSERT INTO book_reader VALUES 
  (1, 1),
  (2, 2),
  (2, 3),
  (2, 4),
  (2, 5),
  (3, 3);

-- 
-- Вывод данных для таблицы nrandom
--
INSERT INTO nrandom VALUES 
  (1),
  (2),
  (3),
  (4),
  (5);

-- 
-- Вывод данных для таблицы reader
--
INSERT INTO reader VALUES 
  (1, 'R1', NULL, NULL),
  (2, 'R2', NULL, NULL),
  (3, 'R3', NULL, NULL),
  (4, 'R4', NULL, NULL);

-- 
-- Включение внешних ключей
-- 
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;