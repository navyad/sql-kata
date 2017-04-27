/* 
this script explores PRIMARY KEY constaraint
*/


CREATE TABLE person (pid INT PRIMARY KEY, name VARCHAR(100));
INSERT INTO person (pid, name) VALUES (123, "naveen");
INSERT INTO person (pid, name) VALUES (0, "navyad");
SELECT * from person;
/*
+-----+---------+
| pid | name    |
+-----+---------+
|   0 | navyad  |
| 123 | naveen  |
+-----+---------+
*/
-- following does not works, since primary key means UNIQUE and NOT NULL
INSERT INTO person (pid, name) VALUES (NULL, "navin");
UPDATE person SET pid=1 WHERE pid=0;
/*
+-----+---------+
| pid | name    |
+-----+---------+
|   0 | navyad  |
| 123 | naveen  |
+-----+---------+
*/


CREATE TABLE animal (id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(100));
DESCRIBE animal;
INSERT INTO animal (name) VALUES ("dog");
INSERT INTO animal (id, name) VALUES (5, "rat");
INSERT INTO animal (name) VALUES ("cat");
SELECT * from animal;
/*
+----+------+
| id | name |
+----+------+
|  1 | dog  |
|  5 | rat  |
|  6 | cat  |
+----+------+
*/

UPDATE animal SET id=2 WHERE id=1;
SELECT * from animal;
/*
+----+------+
| id | name |
+----+------+
|  2 | dog  |
|  5 | dog  |
|  6 | cat  |
+----+------+
*/

-- default does not work with AUTO_INCREMENT
CREATE TABLE river (id INT AUTO_INCREMENT PRIMARY KEY DEFAULT 10 , name VARCHAR(100));


-- 
CREATE TABLE river (id INT PRIMARY KEY DEFAULT 10 , name VARCHAR(100));
INSERT INTO river (name) VALUES ("jhelum");
INSERT INTO river (name) VALUES (99, "ganges");
SELECT * from river;
/*
+----+--------+
| id | name   |
+----+--------+
| 10 | jhelum |
| 99 | ganges |
+----+--------+
*/
-- ERROR: since id has to be unique 
INSERT INTO river (name) VALUES ("indus");





CREATE TABLE sport (sport_name VARCHAR(100),  sport_person VARCHAR(100), PRIMARY KEY (sport_name, sport_person));
INSERT INTO SPORT (sport_name, sport_person) VALUES ("cricket", "sachin");
INSERT INTO SPORT (sport_name, sport_person) VALUES ("cricket", "ricky ponting");
INSERT INTO SPORT (sport_name, sport_person) VALUES ("cricket", "bradman");
SELECT * from sport;
/*
+------------+---------------+
| sport_name | sport_person  |
+------------+---------------+
| cricket    | bradman       |
| cricket    | ricky ponting |
| cricket    | sachin        |
+------------+---------------+
*/
-- ERROR: Duplicate entry 'cricket-bradman' for key 'PRIMARY'
INSERT INTO SPORT (sport_name, sport_person) VALUES ("cricket", "bradman");
