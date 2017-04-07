-- list all tables
SELECT TABLE_TYPE, TABLE_NAME, ENGINE FROM INFORMATION_SCHEMA.TABLES;


 SELECT TABLE_TYPE, TABLE_NAME, ENGINE, TABLE_ROWS, ROW_FORMAT, AUTO_INCREMENT FROM INFORMATION_SCHEMA.TABLES WHERE ENGINE='InnoDB';
/*
+-------------+------------------------------------+--------+------------+------------+----------------+
| TABLE_TYPE  | TABLE_NAME                         | ENGINE | TABLE_ROWS | ROW_FORMAT | AUTO_INCREMENT |
+-------------+------------------------------------+--------+------------+------------+----------------+
| SYSTEM VIEW | COLUMNS                            | InnoDB |       NULL | Dynamic    |           NULL |
| SYSTEM VIEW | EVENTS                             | InnoDB |       NULL | Dynamic    |           NULL |
| SYSTEM VIEW | OPTIMIZER_TRACE                    | InnoDB |       NULL | Dynamic    |           NULL |
| SYSTEM VIEW | PARAMETERS                         | InnoDB |       NULL | Dynamic    |           NULL |
| SYSTEM VIEW | PARTITIONS                         | InnoDB |       NULL | Dynamic    |           NULL |
| SYSTEM VIEW | PLUGINS                            | InnoDB |       NULL | Dynamic    |           NULL |
| SYSTEM VIEW | PROCESSLIST                        | InnoDB |       NULL | Dynamic    |           NULL |
| SYSTEM VIEW | ROUTINES                           | InnoDB |       NULL | Dynamic    |           NULL |
| SYSTEM VIEW | TRIGGERS                           | InnoDB |       NULL | Dynamic    |           NULL |
| SYSTEM VIEW | VIEWS                              | InnoDB |       NULL | Dynamic    |           NULL |
| BASE TABLE  | departments                        | InnoDB |          9 | Dynamic    |           NULL |
| BASE TABLE  | dept_emp                           | InnoDB |     331570 | Dynamic    |           NULL |
| BASE TABLE  | dept_manager                       | InnoDB |         24 | Dynamic    |           NULL |
| BASE TABLE  | employees                          | InnoDB |     299379 | Dynamic    |           NULL |
| BASE TABLE  | salaries                           | InnoDB |    2838426 | Dynamic    |           NULL |
| BASE TABLE  | titles                             | InnoDB |     442308 | Dynamic    |           NULL |
| BASE TABLE  | engine_cost                        | InnoDB |          2 | Dynamic    |           NULL |
| BASE TABLE  | gtid_executed                      | InnoDB |          0 | Dynamic    |           NULL |
| BASE TABLE  | help_category                      | InnoDB |         40 | Dynamic    |           NULL |
| BASE TABLE  | help_keyword                       | InnoDB |        485 | Dynamic    |           NULL |
| BASE TABLE  | help_relation                      | InnoDB |       1580 | Dynamic    |           NULL |
| BASE TABLE  | help_topic                         | InnoDB |        685 | Dynamic    |           NULL |
| BASE TABLE  | innodb_index_stats                 | InnoDB |        223 | Dynamic    |           NULL |
| BASE TABLE  | innodb_table_stats                 | InnoDB |         25 | Dynamic    |           NULL |
| BASE TABLE  | plugin                             | InnoDB |          0 | Dynamic    |           NULL |
| BASE TABLE  | server_cost                        | InnoDB |          6 | Dynamic    |           NULL |
| BASE TABLE  | servers                            | InnoDB |          0 | Dynamic    |           NULL |
| BASE TABLE  | slave_master_info                  | InnoDB |          0 | Dynamic    |           NULL |
| BASE TABLE  | slave_relay_log_info               | InnoDB |          0 | Dynamic    |           NULL |
| BASE TABLE  | slave_worker_info                  | InnoDB |          0 | Dynamic    |           NULL |
| BASE TABLE  | time_zone                          | InnoDB |          0 | Dynamic    |              1 |
| BASE TABLE  | time_zone_leap_second              | InnoDB |          0 | Dynamic    |           NULL |
| BASE TABLE  | time_zone_name                     | InnoDB |          0 | Dynamic    |           NULL |
| BASE TABLE  | time_zone_transition               | InnoDB |          0 | Dynamic    |           NULL |
| BASE TABLE  | time_zone_transition_type          | InnoDB |          0 | Dynamic    |           NULL |
| BASE TABLE  | sys_config                         | InnoDB |          6 | Dynamic    |           NULL |
| BASE TABLE  | department                         | InnoDB |          0 | Dynamic    |           NULL |
| BASE TABLE  | department                         | InnoDB |          4 | Dynamic    |           NULL |
| BASE TABLE  | employee                           | InnoDB |          7 | Dynamic    |           NULL |
| BASE TABLE  | articles                           | InnoDB |          7 | Dynamic    |              8 |
+-------------+------------------------------------+--------+------------+------------+----------------+
*/


select COLUMN_NAME, COLUMN_TYPE, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH, COLUMN_KEY from COLUMNS where TABLE_NAME='articles';
/*
+-------------+------------------+-----------+--------------------------+------------+
| COLUMN_NAME | COLUMN_TYPE      | DATA_TYPE | CHARACTER_MAXIMUM_LENGTH | COLUMN_KEY |
+-------------+------------------+-----------+--------------------------+------------+
| id          | int(10) unsigned | int       |                     NULL | PRI        |
| title       | varchar(200)     | varchar   |                      200 | MUL        |
| body        | text             | text      |                    65535 |            |
+-------------+------------------+-----------+--------------------------+------------+
*/





select * from ENGINES;
/*
+--------------------+---------+----------------------------------------------------------------+--------------+------+------------+
| ENGINE             | SUPPORT | COMMENT                                                        | TRANSACTIONS | XA   | SAVEPOINTS |
+--------------------+---------+----------------------------------------------------------------+--------------+------+------------+
| InnoDB             | DEFAULT | Supports transactions, row-level locking, and foreign keys     | YES          | YES  | YES        |
| MRG_MYISAM         | YES     | Collection of identical MyISAM tables                          | NO           | NO   | NO         |
| MEMORY             | YES     | Hash based, stored in memory, useful for temporary tables      | NO           | NO   | NO         |
| BLACKHOLE          | YES     | /dev/null storage engine (anything you write to it disappears) | NO           | NO   | NO         |
| MyISAM             | YES     | MyISAM storage engine                                          | NO           | NO   | NO         |
| CSV                | YES     | CSV storage engine                                             | NO           | NO   | NO         |
| ARCHIVE            | YES     | Archive storage engine                                         | NO           | NO   | NO         |
| PERFORMANCE_SCHEMA | YES     | Performance Schema                                             | NO           | NO   | NO         |
| FEDERATED          | NO      | Federated MySQL storage engine                                 | NULL         | NULL | NULL       |
+--------------------+---------+----------------------------------------------------------------+--------------+------+------------+
*/



select FILE_ID, FILE_NAME, FILE_TYPE, TABLESPACE_NAME  from FILES  ORDER BY FILE_ID;
/*
+---------+---------------------------------------------------------------+------------+--------------------------+
| FILE_ID | FILE_NAME                                                     | FILE_TYPE  | TABLESPACE_NAME          |
+---------+---------------------------------------------------------------+------------+--------------------------+
|       0 | ./ibdata1                                                     | TABLESPACE | innodb_system            |
|       2 | ./mysql/plugin.ibd                                            | TABLESPACE | innodb_file_per_table_2  |
|       3 | ./mysql/servers.ibd                                           | TABLESPACE | innodb_file_per_table_3  |
|       4 | ./mysql/help_topic.ibd                                        | TABLESPACE | innodb_file_per_table_4  |
|       5 | ./mysql/help_category.ibd                                     | TABLESPACE | innodb_file_per_table_5  |
|       6 | ./mysql/help_relation.ibd                                     | TABLESPACE | innodb_file_per_table_6  |
|       7 | ./mysql/help_keyword.ibd                                      | TABLESPACE | innodb_file_per_table_7  |
|       8 | ./mysql/time_zone_name.ibd                                    | TABLESPACE | innodb_file_per_table_8  |
|       9 | ./mysql/time_zone.ibd                                         | TABLESPACE | innodb_file_per_table_9  |
|      10 | ./mysql/time_zone_transition.ibd                              | TABLESPACE | innodb_file_per_table_10 |
|      11 | ./mysql/time_zone_transition_type.ibd                         | TABLESPACE | innodb_file_per_table_11 |
|      12 | ./mysql/time_zone_leap_second.ibd                             | TABLESPACE | innodb_file_per_table_12 |
|      13 | ./mysql/innodb_table_stats.ibd                                | TABLESPACE | innodb_file_per_table_13 |
|      14 | ./mysql/innodb_index_stats.ibd                                | TABLESPACE | innodb_file_per_table_14 |
|      15 | ./mysql/slave_relay_log_info.ibd                              | TABLESPACE | innodb_file_per_table_15 |
|      16 | ./mysql/slave_master_info.ibd                                 | TABLESPACE | innodb_file_per_table_16 |
|      17 | ./mysql/slave_worker_info.ibd                                 | TABLESPACE | innodb_file_per_table_17 |
|      18 | ./mysql/gtid_executed.ibd                                     | TABLESPACE | innodb_file_per_table_18 |
|      19 | ./mysql/server_cost.ibd                                       | TABLESPACE | innodb_file_per_table_19 |
|      20 | ./mysql/engine_cost.ibd                                       | TABLESPACE | innodb_file_per_table_20 |
|      21 | ./sys/sys_config.ibd                                          | TABLESPACE | innodb_file_per_table_21 |
|      55 | ./employees/employees.ibd                                     | TABLESPACE | innodb_file_per_table_55 |
|      56 | ./employees/departments.ibd                                   | TABLESPACE | innodb_file_per_table_56 |
|      57 | ./employees/dept_manager.ibd                                  | TABLESPACE | innodb_file_per_table_57 |
|      58 | ./employees/dept_emp.ibd                                      | TABLESPACE | innodb_file_per_table_58 |
|      59 | ./employees/titles.ibd                                        | TABLESPACE | innodb_file_per_table_59 |
|      60 | ./employees/salaries.ibd                                      | TABLESPACE | innodb_file_per_table_60 |
|      73 | ./text_full/articles.ibd                                      | TABLESPACE | innodb_file_per_table_73 |
|      74 | ./text_full/FTS_0000000000000059_BEING_DELETED.ibd            | TABLESPACE | innodb_file_per_table_74 |
|      75 | ./text_full/FTS_0000000000000059_BEING_DELETED_CACHE.ibd      | TABLESPACE | innodb_file_per_table_75 |
|      76 | ./text_full/FTS_0000000000000059_CONFIG.ibd                   | TABLESPACE | innodb_file_per_table_76 |
|      77 | ./text_full/FTS_0000000000000059_DELETED.ibd                  | TABLESPACE | innodb_file_per_table_77 |
|      78 | ./text_full/FTS_0000000000000059_DELETED_CACHE.ibd            | TABLESPACE | innodb_file_per_table_78 |
|      79 | ./text_full/FTS_0000000000000059_0000000000000088_INDEX_1.ibd | TABLESPACE | innodb_file_per_table_79 |
|      80 | ./text_full/FTS_0000000000000059_0000000000000088_INDEX_2.ibd | TABLESPACE | innodb_file_per_table_80 |
|      81 | ./text_full/FTS_0000000000000059_0000000000000088_INDEX_3.ibd | TABLESPACE | innodb_file_per_table_81 |
|      82 | ./text_full/FTS_0000000000000059_0000000000000088_INDEX_4.ibd | TABLESPACE | innodb_file_per_table_82 |
|      83 | ./text_full/FTS_0000000000000059_0000000000000088_INDEX_5.ibd | TABLESPACE | innodb_file_per_table_83 |
|      84 | ./text_full/FTS_0000000000000059_0000000000000088_INDEX_6.ibd | TABLESPACE | innodb_file_per_table_84 |
|      85 | ./ibtmp1                                                      | TEMPORARY  | innodb_temporary         |
|      88 | ./test/department.ibd                                         | TABLESPACE | innodb_file_per_table_88 |
|      91 | ./test_join/department.ibd                                    | TABLESPACE | innodb_file_per_table_91 |
|      92 | ./test_join/employee.ibd                                      | TABLESPACE | innodb_file_per_table_92 |
+---------+---------------------------------------------------------------+------------+--------------------------+
*/


