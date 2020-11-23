-- https://www.postgresql.org/docs/current/catalog-pg-database.html
select *  FROM pg_database;


-- size of all dbs
SELECT pg_database.datname, pg_size_pretty(pg_database_size(pg_database.datname)) AS size FROM pg_database;
