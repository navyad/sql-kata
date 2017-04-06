/* 
select * from department;
+---------+-------------+
| dept_id | dept_name   |
+---------+-------------+
|      31 | Sales       |
|      33 | Engineering |
|      34 | Clerical    |
|      35 | Marketing   |
+---------+-------------+

select * from employee;
+------------+---------+
| emp_name   | dept_id |
+------------+---------+
| Rafferty   |      31 |
| Jones      |      33 |
| Heisenberg |      33 |
| Robinson   |      34 |
| Smith      |      34 |
| Williams   |    NULL |
| Jane       |    NULL |
+------------+---------+
*/

--- It will reproduce cartesian product of two tables
select * from employee INNER JOIN department;
/*
+------------+---------+---------+-------------+
| emp_name   | dept_id | dept_id | dept_name   |
+------------+---------+---------+-------------+
| Rafferty   |      31 |      31 | Sales       |
| Rafferty   |      31 |      33 | Engineering |
| Rafferty   |      31 |      34 | Clerical    |
| Rafferty   |      31 |      35 | Marketing   |
| Jones      |      33 |      31 | Sales       |
| Jones      |      33 |      33 | Engineering |
| Jones      |      33 |      34 | Clerical    |
| Jones      |      33 |      35 | Marketing   |
| Heisenberg |      33 |      31 | Sales       |
| Heisenberg |      33 |      33 | Engineering |
| Heisenberg |      33 |      34 | Clerical    |
| Heisenberg |      33 |      35 | Marketing   |
| Robinson   |      34 |      31 | Sales       |
| Robinson   |      34 |      33 | Engineering |
| Robinson   |      34 |      34 | Clerical    |
| Robinson   |      34 |      35 | Marketing   |
| Smith      |      34 |      31 | Sales       |
| Smith      |      34 |      33 | Engineering |
| Smith      |      34 |      34 | Clerical    |
| Smith      |      34 |      35 | Marketing   |
| Williams   |    NULL |      31 | Sales       |
| Williams   |    NULL |      33 | Engineering |
| Williams   |    NULL |      34 | Clerical    |
| Williams   |    NULL |      35 | Marketing   |
| Jane       |    NULL |      31 | Sales       |
| Jane       |    NULL |      33 | Engineering |
| Jane       |    NULL |      34 | Clerical    |
| Jane       |    NULL |      35 | Marketing   |
+------------+---------+---------+-------------+
*/

select * from employee as emp INNER JOIN department as dp ON dp.dept_id=emp.dept_id;
/*
+------------+---------+---------+-------------+
| emp_name   | dept_id | dept_id | dept_name   |
+------------+---------+---------+-------------+
| Rafferty   |      31 |      31 | Sales       |
| Jones      |      33 |      33 | Engineering |
| Heisenberg |      33 |      33 | Engineering |
| Robinson   |      34 |      34 | Clerical    |
| Smith      |      34 |      34 | Clerical    |
+------------+---------+---------+-------------+

*/


select * from employee as emp LEFT JOIN department as dp ON dp.dept_id=emp.dept_id;
/*
+------------+---------+---------+-------------+
| emp_name   | dept_id | dept_id | dept_name   |
+------------+---------+---------+-------------+
| Rafferty   |      31 |      31 | Sales       |
| Jones      |      33 |      33 | Engineering |
| Heisenberg |      33 |      33 | Engineering |
| Robinson   |      34 |      34 | Clerical    |
| Smith      |      34 |      34 | Clerical    |
| Williams   |    NULL |    NULL | NULL        |
| Jane       |    NULL |    NULL | NULL        |
+------------+---------+---------+-------------+
*/



select * from employee as emp RIGHT JOIN department as dp ON dp.dept_id=emp.dept_id;
/*
+------------+---------+---------+-------------+
| emp_name   | dept_id | dept_id | dept_name   |
+------------+---------+---------+-------------+
| Rafferty   |      31 |      31 | Sales       |
| Jones      |      33 |      33 | Engineering |
| Heisenberg |      33 |      33 | Engineering |
| Robinson   |      34 |      34 | Clerical    |
| Smith      |      34 |      34 | Clerical    |
| NULL       |    NULL |      35 | Marketing   |
+------------+---------+---------+-------------+
