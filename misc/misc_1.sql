select VARIABLE_NAME, VARIABLE_VALUE from performance_schema.global_variables;


select * from REFERENTIAL_CONSTRAINTS WHERE TABLE_NAME'employee';


--
select INDEX_TYPE, INDEX_NAME, TABLE_NAME, COLUMN_NAME, NULLABLE   from INFORMATION_SCHEMA.STATISTICS;
/*
+------------+------------------------------------------------------------------+------------------------------------+--------------------+----------+
| INDEX_TYPE | INDEX_NAME                                                       | TABLE_NAME                         | COLUMN_NAME        | NULLABLE |
+------------+------------------------------------------------------------------+------------------------------------+--------------------+----------+
| BTREE      | PRIMARY                                                          | departments                        | dept_no            |          |
| BTREE      | dept_name                                                        | departments                        | dept_name          |          |
| BTREE      | PRIMARY                                                          | dept_emp                           | emp_no             |          |
| BTREE      | PRIMARY                                                          | dept_emp                           | dept_no            |          |
| BTREE      | emp_no                                                           | dept_emp                           | emp_no             |          |
| BTREE      | emp_no                                                           | dept_manager                       | emp_no             |          |
| BTREE      | dept_no                                                          | dept_manager                       | dept_no            |          |
| BTREE      | PRIMARY                                                          | employees                          | emp_no             |          |
| BTREE      | PRIMARY                                                          | salaries                           | emp_no             |          |
| BTREE      | auth_group_permissions_group_id_0cd325b0_uniq                    | auth_group_permissions             | group_id           |          |
| BTREE      | auth_group_permissions_group_id_0cd325b0_uniq                    | auth_group_permissions             | permission_id      |          |
| BTREE      | auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id | auth_group_permissions             | permission_id      |          |
| BTREE      | PRIMARY                                                          | db                                 | Host               |          |
| BTREE      | PRIMARY                                                          | db                                 | Db                 |          |
| BTREE      | PRIMARY                                                          | db                                 | User               |          |
| BTREE      | User                                                             | db                                 | User               |          |
| BTREE      | PRIMARY                                                          | engine_cost                        | cost_name          |          |
| BTREE      | PRIMARY                                                          | gtid_executed                      | interval_start     |          |
| BTREE      | PRIMARY                                                          | help_category                      | help_category_id   |          |
| BTREE      | name                                                             | help_category                      | name               |          |
| BTREE      | PRIMARY                                                          | help_keyword                       | help_keyword_id    |          |
| BTREE      | name                                                             | help_keyword                       | name               |          |
| BTREE      | Grantor                                                          | procs_priv                         | Grantor            |          |
| BTREE      | PRIMARY                                                          | proxies_priv                       | Host               |          |
| BTREE      | PRIMARY                                                          | proxies_priv                       | User               |          |
| BTREE      | PRIMARY                                                          | proxies_priv                       | Proxied_host       |          |
| BTREE      | PRIMARY                                                          | proxies_priv                       | Proxied_user       |          |
| BTREE      | Grantor                                                          | proxies_priv                       | Grantor            |          |
| BTREE      | Grantor                                                          | tables_priv                        | Grantor            |          |
| FULLTEXT   | title                                                            | articles                           | title              | YES      |
| FULLTEXT   | title                                                            | articles                           | body               | YES      |
+------------+------------------------------------------------------------------+------------------------------------+--------------------+----------+
*/


select PLUGIN_NAME, PLUGIN_TYPE, PLUGIN_VERSION  from PLUGINS;
/*
+----------------------------+--------------------+----------------+
| PLUGIN_NAME                | PLUGIN_TYPE        | PLUGIN_VERSION |
+----------------------------+--------------------+----------------+
| binlog                     | STORAGE ENGINE     | 1.0            |
| mysql_native_password      | AUTHENTICATION     | 1.1            |
| sha256_password            | AUTHENTICATION     | 1.1            |
| CSV                        | STORAGE ENGINE     | 1.0            |
| MEMORY                     | STORAGE ENGINE     | 1.0            |
| InnoDB                     | STORAGE ENGINE     | 5.7            |
| INNODB_TRX                 | INFORMATION SCHEMA | 5.7            |
| INNODB_LOCKS               | INFORMATION SCHEMA | 5.7            |
| INNODB_LOCK_WAITS          | INFORMATION SCHEMA | 5.7            |
| INNODB_CMP                 | INFORMATION SCHEMA | 5.7            |
| INNODB_CMP_RESET           | INFORMATION SCHEMA | 5.7            |
| INNODB_CMPMEM              | INFORMATION SCHEMA | 5.7            |
| INNODB_CMPMEM_RESET        | INFORMATION SCHEMA | 5.7            |
| INNODB_CMP_PER_INDEX       | INFORMATION SCHEMA | 5.7            |
| INNODB_CMP_PER_INDEX_RESET | INFORMATION SCHEMA | 5.7            |
| INNODB_BUFFER_PAGE         | INFORMATION SCHEMA | 5.7            |
| INNODB_BUFFER_PAGE_LRU     | INFORMATION SCHEMA | 5.7            |
| INNODB_BUFFER_POOL_STATS   | INFORMATION SCHEMA | 5.7            |
| INNODB_TEMP_TABLE_INFO     | INFORMATION SCHEMA | 5.7            |
| INNODB_METRICS             | INFORMATION SCHEMA | 5.7            |
| INNODB_FT_DEFAULT_STOPWORD | INFORMATION SCHEMA | 5.7            |
| INNODB_FT_DELETED          | INFORMATION SCHEMA | 5.7            |
| INNODB_FT_BEING_DELETED    | INFORMATION SCHEMA | 5.7            |
| INNODB_FT_CONFIG           | INFORMATION SCHEMA | 5.7            |
| INNODB_FT_INDEX_CACHE      | INFORMATION SCHEMA | 5.7            |
| INNODB_FT_INDEX_TABLE      | INFORMATION SCHEMA | 5.7            |
| INNODB_SYS_TABLES          | INFORMATION SCHEMA | 5.7            |
| INNODB_SYS_TABLESTATS      | INFORMATION SCHEMA | 5.7            |
| INNODB_SYS_INDEXES         | INFORMATION SCHEMA | 5.7            |
| INNODB_SYS_COLUMNS         | INFORMATION SCHEMA | 5.7            |
| INNODB_SYS_FIELDS          | INFORMATION SCHEMA | 5.7            |
| INNODB_SYS_FOREIGN         | INFORMATION SCHEMA | 5.7            |
| INNODB_SYS_FOREIGN_COLS    | INFORMATION SCHEMA | 5.7            |
| INNODB_SYS_TABLESPACES     | INFORMATION SCHEMA | 5.7            |
| INNODB_SYS_DATAFILES       | INFORMATION SCHEMA | 5.7            |
| INNODB_SYS_VIRTUAL         | INFORMATION SCHEMA | 5.7            |
| MyISAM                     | STORAGE ENGINE     | 1.0            |
| MRG_MYISAM                 | STORAGE ENGINE     | 1.0            |
| PERFORMANCE_SCHEMA         | STORAGE ENGINE     | 0.1            |
| ARCHIVE                    | STORAGE ENGINE     | 3.0            |
| BLACKHOLE                  | STORAGE ENGINE     | 1.0            |
| FEDERATED                  | STORAGE ENGINE     | 1.0            |
| partition                  | STORAGE ENGINE     | 1.0            |
| ngram                      | FTPARSER           | 0.1            |
+----------------------------+--------------------+----------------+
*/
