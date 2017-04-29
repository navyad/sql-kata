CREATE table names ( num INT UNIQUE, name VARCHAR(100) UNIQUE);

INSERT INTO names (num, name) VALUES (10, "navyad");


SELECT * from names;
/*
+------+--------+
| num  | name   |
+------+--------+
|   10 | navyad |
+------+--------+
*/

-- ERROR: Duplicate entry '10' for key 'num'
INSERT INTO names (num, name) VALUES (10, "navyad");

 -- ERROR  Duplicate entry 'navyad' for key 'name'
INSERT INTO names (num, name) VALUES (11, "navyad");

--  this works
UPDATE names SET num = 10 WHERE num = 10;

-- NULL works UNIQUE
INSERT INTO names (num, name) VALUES (NULL, NULL);


SELECT  * from names;
+------+--------+
| num  | name   |
+------+--------+
|   10 | navyad |
| NULL | NULL   |
+------+--------+

