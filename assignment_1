$ mysql -u root -p
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 9
Server version: 8.0.30-0ubuntu0.22.04.1 (Ubuntu)

Copyright (c) 2000, 2022, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| NEW                |
| TE                 |
| b2                 |
| cricket            |
| hospital           |
| information_schema |
| movies             |
| mysql              |
| performance_schema |
| school             |
| series             |
| sys                |
+--------------------+
12 rows in set (0.00 sec)

mysql> create database webseries;
Query OK, 1 row affected (0.01 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| NEW                |
| TE                 |
| b2                 |
| cricket            |
| hospital           |
| information_schema |
| movies             |
| mysql              |
| performance_schema |
| school             |
| series             |
| sys                |
| webseries          |
+--------------------+
13 rows in set (0.00 sec)

mysql> use webseries;
Database changed
mysql> create table webseries(name varchar(50),lead_actor varchar(50),release_date int,imdb_rating float);
Query OK, 0 rows affected (0.03 sec)

mysql> insert into webseries values("TVD","Ian",2009,9.8),("Originals","Joseph",2011,9.3),("Stranger things","Fin",2016,8.4),("Mismatched","Rohit",2019,8.0),("13 Reason Why","katherine",2013,7.9);
Query OK, 5 rows affected (0.03 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from webseries;
+-----------------+------------+--------------+-------------+
| name            | lead_actor | release_date | imdb_rating |
+-----------------+------------+--------------+-------------+
| TVD             | Ian        |         2009 |         9.8 |
| Originals       | Joseph     |         2011 |         9.3 |
| Stranger things | Fin        |         2016 |         8.4 |
| Mismatched      | Rohit      |         2019 |           8 |
| 13 Reason Why   | katherine  |         2013 |         7.9 |
+-----------------+------------+--------------+-------------+
5 rows in set (0.00 sec)

mysql> update webseries set release_date=2010 where name="Originals";
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> alter table webseries add column series_id int;
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select *from webseries;
+-----------------+------------+--------------+-------------+-----------+
| name            | lead_actor | release_date | imdb_rating | series_id |
+-----------------+------------+--------------+-------------+-----------+
| TVD             | Ian        |         2009 |         9.8 |      NULL |
| Originals       | Joseph     |         2010 |         9.3 |      NULL |
| Stranger things | Fin        |         2016 |         8.4 |      NULL |
| Mismatched      | Rohit      |         2019 |           8 |      NULL |
| 13 Reason Why   | katherine  |         2013 |         7.9 |      NULL |
+-----------------+------------+--------------+-------------+-----------+
5 rows in set (0.00 sec)

mysql> select name,lead_actor from webseries;
+-----------------+------------+
| name            | lead_actor |
+-----------------+------------+
| TVD             | Ian        |
| Originals       | Joseph     |
| Stranger things | Fin        |
| Mismatched      | Rohit      |
| 13 Reason Why   | katherine  |
+-----------------+------------+
5 rows in set (0.00 sec)

mysql> select name from webseries where lead_actor="IAN";
+------+
| name |
+------+
| TVD  |
+------+
1 row in set (0.00 sec)

mysql> select imdb_rating from webseries where imdb_rating>8.2;
+-------------+
| imdb_rating |
+-------------+
|         9.8 |
|         9.3 |
|         8.4 |
+-------------+
3 rows in set (0.00 sec)

mysql> select name,lead_actor,imdb_rating where imdb_rating>8.2;
ERROR 1054 (42S22): Unknown column 'name' in 'field list'
mysql> select name,lead_actor,imdb_rating from webseries where imdb_rating>8.2;
+-----------------+------------+-------------+
| name            | lead_actor | imdb_rating |
+-----------------+------------+-------------+
| TVD             | Ian        |         9.8 |
| Originals       | Joseph     |         9.3 |
| Stranger things | Fin        |         8.4 |
+-----------------+------------+-------------+
3 rows in set (0.00 sec)

mysql> alter table webseries drop column series_id;
Query OK, 0 rows affected (0.01 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select *from webseries;
+-----------------+------------+--------------+-------------+
| name            | lead_actor | release_date | imdb_rating |
+-----------------+------------+--------------+-------------+
| TVD             | Ian        |         2009 |         9.8 |
| Originals       | Joseph     |         2010 |         9.3 |
| Stranger things | Fin        |         2016 |         8.4 |
| Mismatched      | Rohit      |         2019 |           8 |
| 13 Reason Why   | katherine  |         2013 |         7.9 |
+-----------------+------------+--------------+-------------+
5 rows in set (0.00 sec)

mysql> delete from webseries where release_date=2019;
Query OK, 1 row affected (0.02 sec)

mysql> select * from webseries;
+-----------------+------------+--------------+-------------+
| name            | lead_actor | release_date | imdb_rating |
+-----------------+------------+--------------+-------------+
| TVD             | Ian        |         2009 |         9.8 |
| Originals       | Joseph     |         2010 |         9.3 |
| Stranger things | Fin        |         2016 |         8.4 |
| 13 Reason Why   | katherine  |         2013 |         7.9 |
+-----------------+------------+--------------+-------------+
4 rows in set (0.00 sec)

mysql> delete from webseries;
Query OK, 4 rows affected (0.01 sec)

mysql> select * from webseries;
Empty set (0.00 sec)

mysql> exit
Bye
