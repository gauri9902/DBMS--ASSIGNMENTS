/*CONSTRAINTS*/

C:\Program Files\MySQL\MySQL Server 8.0\bin>mysql -u root -p
Enter password: *********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 15
Server version: 8.0.30 MySQL Community Server - GPL

Copyright (c) 2000, 2022, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| gauridb            |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
5 rows in set (0.00 sec)

mysql> use gauridb;
Database changed
mysql> create table colleges(clg_id int NOT NULL, Name varchar(20),city varchar(25));
Query OK, 0 rows affected (0.03 sec)

mysql> insert into colleges values(1,"DYPCOE","Pune"),(2,"PCCOE","Pune");
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from colleges;
+--------+--------+------+
| clg_id | Name   | city |
+--------+--------+------+
|      1 | DYPCOE | Pune |
|      2 | PCCOE  | Pune |
+--------+--------+------+
2 rows in set (0.00 sec)

mysql> insert into colleges values(NULL,"K.K.Wagh","Nashik");
ERROR 1048 (23000): Column 'clg_id' cannot be null

mysql> Create table branch(branch_id int NOT NULL PRIMARY KEY,Name varchar(25) UNIQUE,Building varchar(5) default "A");
Query OK, 0 rows affected (0.02 sec)

mysql> insert into branch values(101,"Computer","A"),(102,"Civil","");
Query OK, 2 rows affected (0.00 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select*from branch;
+-----------+----------+----------+
| branch_id | Name     | Building |
+-----------+----------+----------+
|       101 | Computer | A        |
|       102 | Civil    |          |
+-----------+----------+----------+
2 rows in set (0.00 sec)

mysql> insert into branch (branch_id,Name)values(103,"Mechanical");
Query OK, 1 row affected (0.00 sec)

mysql> select * from branch;
+-----------+------------+----------+
| branch_id | Name       | Building |
+-----------+------------+----------+
|       101 | Computer   | A        |
|       102 | Civil      |          |
|       103 | Mechanical | A        |
+-----------+------------+----------+
3 rows in set (0.00 sec)

mysql> insert into branch(branch_id,Name) values (103,"Civil");
ERROR 1062 (23000): Duplicate entry '103' for key 'branch.PRIMARY'

mysql> update branch set Name="AIDS" where branch_id=102;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from branch;
+-----------+------------+----------+
| branch_id | Name       | Building |
+-----------+------------+----------+
|       101 | Computer   | A        |
|       102 | AIDS       |          |
|       103 | Mechanical | A        |
+-----------+------------+----------+
3 rows in set (0.00 sec)

mysql> create table student(id int PRIMARY KEY AUTO_INCREMENT,name varchar(20));
Query OK, 0 rows affected (0.01 sec)

mysql> insert into student (name) values("gauri"),("surabhi"),("nicky");
Query OK, 3 rows affected (0.00 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from student;
+----+---------+
| id | name    |
+----+---------+
|  1 | gauri   |
|  2 | surabhi |
|  3 | nicky   |
+----+---------+
3 rows in set (0.00 sec)

mysql> insert into computer values(1,"DELL",70000),(2,"LENOVO",39000),(3,"ACER",50000);
ERROR 3819 (HY000): Check constraint 'computer_chk_1' is violated.
mysql> insert into computer values(1,"DELL",70000),(2,"LENOVO",49000),(3,"ACER",50000);
Query OK, 3 rows affected (0.00 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from computer;
+-------+--------+-------+
| sr_no | name   | price |
+-------+--------+-------+
|     1 | DELL   | 70000 |
|     2 | LENOVO | 49000 |
|     3 | ACER   | 50000 |
+-------+--------+-------+
3 rows in set (0.00 sec)

mysql> quit
Bye
