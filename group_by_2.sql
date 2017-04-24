DROP DATABASE IF EXISTS test;
CREATE DATABASE test;
USE test;




CREATE TABLE names (
    first_name VARCHAR(100) NOT NULL,
    nick_name VARCHAR(50)
);
SELECT  'table created: names' as 'INFO';
INSERT INTO names (first_name, nick_name) VALUES ('naveen', 'navyad'), ('john', ''), ('navin', 'rabi');
SELECT  'populated' as 'INFO';

CREATE TABLE mnames (
    first_name VARCHAR(70) NOT NULL,
    nick_name VARCHAR(50) NOT NULL
);
SELECT  'table created: xnames' as 'INFO';
INSERT INTO mnames (first_name, nick_name) VALUES ('naveen', 'navyad'), ('john', ''), ('navin', 'rabi');
SELECT  'populated' as 'INFO';



CREATE TABLE xnames (
    first_name VARCHAR(70) NOT NULL,
    nick_name VARCHAR(50) NOT NULL,
    PRIMARY KEY (first_name)
);
SELECT  'table created: znames' as 'INFO';
INSERT INTO xnames (first_name, nick_name) VALUES ('naveen', 'navyad'), ('john', 'jenny'), ('navin', 'rabi');
SELECT  'populated' as 'INFO';


CREATE TABLE znames (
    first_name VARCHAR(70) UNIQUE NOT NULL,
    nick_name VARCHAR(50) NOT NULL
);
SELECT  'table created: znames' as 'INFO';
INSERT INTO znames (first_name, nick_name) VALUES ('naveen', 'navyad'), ('john', 'jenny'), ('navin', 'rabi');
SELECT  'populated' as 'INFO';



--- following two query works
select nick_name, count(*) from xnames group by first_name;
select nick_name, count(*) from znames group by first_name;


-- following two query does not works
select nick_name, count(*) from names group by first_name;
select nick_name, count(*) from mnames group by first_name;
