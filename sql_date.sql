 -- filter titles by year
 select * from titles where YEAR(from_date)='1999' limit 10;
 
-- filter titles by month
 select * from titles where MONTH(from_date)='12' limit 10;
 
 -- filter titles by day
select * from titles where DAY(from_date)='12' limit 10;

-- filter by date
select * from titles where from_date=DATE('1988-01-19') limit 10;