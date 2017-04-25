create table defs (a INT, b INT);

-- following line will produce error if mysql is running in strict mode in that case 
-- it would not provide the default value for columns
INSERT INTO (a, b) VALUES ();

-- follwoing workds fine
INSERT INTO defs  ( ) VALUES  ();

SELECT * from defs;
+------+------+
| a    | b    |
+------+------+
| NULL | NULL |
+------+------+
