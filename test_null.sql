/* 
all following statements are run under strict sql mode of MySQL
*/

create table defs (a INT, b INT);
-- follwoing works fine
INSERT INTO defs  ( ) VALUES  ();
INSERT INTO defs (a, b) VALUES (NULL, NULL);
SELECT * from defs;
/*
+------+------+
| a    | b    |
+------+------+
| NULL | NULL |
| NULL | NULL |
+------+------+
*/
-- following line will produce error
INSERT INTO (a, b) VALUES ();


CREATE TABLE points ( x INT DEFAULT 10, y INT DEFAULT 10);
-- following does not work 
INSERT INTO points (x, y) VALUES ();
-- this works
INSERT INTO points (x, y) VALUES (NULL, NULL);
SELECT * from points;
+------+------+
| x    | y    |
+------+------+
| NULL | NULL |
+------+------+


-- In strict mode, folowing will fail and in non-stict mode default value 0 is assinged to both columns
CREATE TABLE joints ( x INT NOT NULL DEFAULT 10, y INT NOT NULL DEFAULT 10);
INSERT INTO joints (x, y) VALUES ('a', 'b');
