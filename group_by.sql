-- list employees by first_name
select first_name from employees GROUP BY first_name;
select distinct first_name from employees;

-- number of times each first_name has appeared 
select first_name, COUNT(*) from employees GROUP BY first_name;

-- filtet by specific count number
SET @count = 270
select first_name, COUNT(*) from employees GROUP BY first_name HAVING Count(*) > @count;

-- order by count
select first_name, COUNT(*) AS emp_count from employees GROUP BY first_name HAVING emp_count > @name_count ORDER BY emp_count DESC;
