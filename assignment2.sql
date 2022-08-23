mysql> use employee;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> create table users(auid int(10) unsigned not null,username varchar(100)not null,password varchar(100)not null,createdata datetime not null,isactive tinyint(1)not null);
Query OK, 0 rows affected, 2 warnings (0.04 sec)

mysql> create table userprofile(apid int(10) unsigned not null,auid int(10)unsigned not null,firstname varchar(50) not null,lastname varchar(50)not null,email varchar(100)not null,phone varchar(45)not null);
Query OK, 0 rows affected, 2 warnings (0.03 sec)

mysql> insert into users values(1,"admin","pswrd123"curdate(),1);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'curdate(),1)' at line 1
mysql> insert into users values(1,"admin","pswrd123",curdate(),1);
Query OK, 1 row affected (0.02 sec)

mysql> insert into users values(2,"admin1","pass506",curdate(),1);
Query OK, 1 row affected (0.02 sec)

mysql> insert into users values(4,"fox12","45@jgo0",curdate(),1),(6,"lexus1267","98hgk",curdate(),1);
Query OK, 2 rows affected (0.02 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> insert into userprofile values(1,1,"Jack","Wolf","bettestroom@gmail.com","67786808655"),(2,3,"Tom","Collins","tnkc@outlook.com","76896797676"),(4,5,"Bill","Fonskin","bill_1290@gmail.com","44976786864"),(7,7,"Ivan","Levchenko","ivan_new@outlook.com","876447478767");
Query OK, 4 rows affected (0.02 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from users;
+------+-----------+----------+---------------------+----------+
| auid | username  | password | createdata          | isactive |
+------+-----------+----------+---------------------+----------+
|    1 | admin     | pswrd123 | 2022-08-22 00:00:00 |        1 |
|    2 | admin1    | pass506  | 2022-08-22 00:00:00 |        1 |
|    4 | fox12     | 45@jgo0  | 2022-08-22 00:00:00 |        1 |
|    6 | lexus1267 | 98hgk    | 2022-08-22 00:00:00 |        1 |
+------+-----------+----------+---------------------+----------+
4 rows in set (0.00 sec)

mysql> select * from userprofile;
+------+------+-----------+-----------+-----------------------+--------------+
| apid | auid | firstname | lastname  | email                 | phone        |
+------+------+-----------+-----------+-----------------------+--------------+
|    1 |    1 | Jack      | Wolf      | bettestroom@gmail.com | 67786808655  |
|    2 |    3 | Tom       | Collins   | tnkc@outlook.com      | 76896797676  |
|    4 |    5 | Bill      | Fonskin   | bill_1290@gmail.com   | 44976786864  |
|    7 |    7 | Ivan      | Levchenko | ivan_new@outlook.com  | 876447478767 |
+------+------+-----------+-----------+-----------------------+--------------+
4 rows in set (0.00 sec)

mysql> select * from users inner join userprofile on users.auid=userprofile.auid;
+------+----------+----------+---------------------+----------+------+------+-----------+----------+-----------------------+-------------+
| auid | username | password | createdata          | isactive | apid | auid | firstname | lastname | email                 | phone       |
+------+----------+----------+---------------------+----------+------+------+-----------+----------+-----------------------+-------------+
|    1 | admin    | pswrd123 | 2022-08-22 00:00:00 |        1 |    1 |    1 | Jack      | Wolf     | bettestroom@gmail.com | 67786808655 |
+------+----------+----------+---------------------+----------+------+------+-----------+----------+-----------------------+-------------+
1 row in set (0.00 sec)

mysql> select * from users left join userprofile on users.auid=userprofile.auid; 
+------+-----------+----------+---------------------+----------+------+------+-----------+----------+-----------------------+-------------+
| auid | username  | password | createdata          | isactive | apid | auid | firstname | lastname | email                 | phone       |
+------+-----------+----------+---------------------+----------+------+------+-----------+----------+-----------------------+-------------+
|    1 | admin     | pswrd123 | 2022-08-22 00:00:00 |        1 |    1 |    1 | Jack      | Wolf     | bettestroom@gmail.com | 67786808655 |
|    2 | admin1    | pass506  | 2022-08-22 00:00:00 |        1 | NULL | NULL | NULL      | NULL     | NULL                  | NULL        |
|    4 | fox12     | 45@jgo0  | 2022-08-22 00:00:00 |        1 | NULL | NULL | NULL      | NULL     | NULL                  | NULL        |
|    6 | lexus1267 | 98hgk    | 2022-08-22 00:00:00 |        1 | NULL | NULL | NULL      | NULL     | NULL                  | NULL        |
+------+-----------+----------+---------------------+----------+------+------+-----------+----------+-----------------------+-------------+
4 rows in set (0.00 sec)

mysql> select * from users right join userprofile on users.auid=userprofile.auid
;
+------+----------+----------+---------------------+----------+------+------+-----------+-----------+-----------------------+--------------+
| auid | username | password | createdata          | isactive | apid | auid | firstname | lastname  | email                 | phone        |
+------+----------+----------+---------------------+----------+------+------+-----------+-----------+-----------------------+--------------+
|    1 | admin    | pswrd123 | 2022-08-22 00:00:00 |        1 |    1 |    1 | Jack      | Wolf      | bettestroom@gmail.com | 67786808655  |
| NULL | NULL     | NULL     | NULL                |     NULL |    2 |    3 | Tom       | Collins   | tnkc@outlook.com      | 76896797676  |
| NULL | NULL     | NULL     | NULL                |     NULL |    4 |    5 | Bill      | Fonskin   | bill_1290@gmail.com   | 44976786864  |
| NULL | NULL     | NULL     | NULL                |     NULL |    7 |    7 | Ivan      | Levchenko | ivan_new@outlook.com  | 876447478767 |
+------+----------+----------+---------------------+----------+------+------+-----------+-----------+-----------------------+--------------+
4 rows in set (0.00 sec)

mysql> select * from users cross join userprofile;
+------+-----------+----------+---------------------+----------+------+------+-----------+-----------+-----------------------+--------------+
| auid | username  | password | createdata          | isactive | apid | auid | firstname | lastname  | email                 | phone        |
+------+-----------+----------+---------------------+----------+------+------+-----------+-----------+-----------------------+--------------+
|    6 | lexus1267 | 98hgk    | 2022-08-22 00:00:00 |        1 |    1 |    1 | Jack      | Wolf      | bettestroom@gmail.com | 67786808655  |
|    4 | fox12     | 45@jgo0  | 2022-08-22 00:00:00 |        1 |    1 |    1 | Jack      | Wolf      | bettestroom@gmail.com | 67786808655  |
|    2 | admin1    | pass506  | 2022-08-22 00:00:00 |        1 |    1 |    1 | Jack      | Wolf      | bettestroom@gmail.com | 67786808655  |
|    1 | admin     | pswrd123 | 2022-08-22 00:00:00 |        1 |    1 |    1 | Jack      | Wolf      | bettestroom@gmail.com | 67786808655  |
|    6 | lexus1267 | 98hgk    | 2022-08-22 00:00:00 |        1 |    2 |    3 | Tom       | Collins   | tnkc@outlook.com      | 76896797676  |
|    4 | fox12     | 45@jgo0  | 2022-08-22 00:00:00 |        1 |    2 |    3 | Tom       | Collins   | tnkc@outlook.com      | 76896797676  |
|    2 | admin1    | pass506  | 2022-08-22 00:00:00 |        1 |    2 |    3 | Tom       | Collins   | tnkc@outlook.com      | 76896797676  |
|    1 | admin     | pswrd123 | 2022-08-22 00:00:00 |        1 |    2 |    3 | Tom       | Collins   | tnkc@outlook.com      | 76896797676  |
|    6 | lexus1267 | 98hgk    | 2022-08-22 00:00:00 |        1 |    4 |    5 | Bill      | Fonskin   | bill_1290@gmail.com   | 44976786864  |
|    4 | fox12     | 45@jgo0  | 2022-08-22 00:00:00 |        1 |    4 |    5 | Bill      | Fonskin   | bill_1290@gmail.com   | 44976786864  |
|    2 | admin1    | pass506  | 2022-08-22 00:00:00 |        1 |    4 |    5 | Bill      | Fonskin   | bill_1290@gmail.com   | 44976786864  |
|    1 | admin     | pswrd123 | 2022-08-22 00:00:00 |        1 |    4 |    5 | Bill      | Fonskin   | bill_1290@gmail.com   | 44976786864  |
|    6 | lexus1267 | 98hgk    | 2022-08-22 00:00:00 |        1 |    7 |    7 | Ivan      | Levchenko | ivan_new@outlook.com  | 876447478767 |
|    4 | fox12     | 45@jgo0  | 2022-08-22 00:00:00 |        1 |    7 |    7 | Ivan      | Levchenko | ivan_new@outlook.com  | 876447478767 |
|    2 | admin1    | pass506  | 2022-08-22 00:00:00 |        1 |    7 |    7 | Ivan      | Levchenko | ivan_new@outlook.com  | 876447478767 |
|    1 | admin     | pswrd123 | 2022-08-22 00:00:00 |        1 |    7 |    7 | Ivan      | Levchenko | ivan_new@outlook.com  | 876447478767 |
+------+-----------+----------+---------------------+----------+------+------+-----------+-----------+-----------------------+--------------+
16 rows in set (0.00 sec)

mysql> use series;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> select * from series;
+---------------------+--------------------+--------------+-------------+--------------+-----------+
| series_name         | lead_actor         | release_date | imdb_rating | platform     | series_id |
+---------------------+--------------------+--------------+-------------+--------------+-----------+
| The vampire dairies | Ian somelhalder    |         2009 |         8.5 | Amazon prime |      NULL |
| Stranger things     | Fin wolfhard       |         2018 |         7.8 | Netflix      |      NULL |
| 13 Reason why       | Katherine langford |         2013 |         8.1 | Netflix      |      NULL |
| Mismatched          | Rohit saraf        |         2009 |         9.1 | Netflix      |      NULL |
| Originals           | Joseph morgan      |         2013 |         8.9 | Amazon prime |      NULL |
+---------------------+--------------------+--------------+-------------+--------------+-----------+
5 rows in set (0.00 sec)

mysql> select platform ,count(platform) from series group by platform;
+--------------+-----------------+
| platform     | count(platform) |
+--------------+-----------------+
| Amazon prime |               2 |
| Netflix      |               3 |
+--------------+-----------------+
2 rows in set (0.03 sec)

/*order by*/

mysql> select * from series order by lead_actor desc;
+---------------------+--------------------+--------------+-------------+--------------+-----------+
| series_name         | lead_actor         | release_date | imdb_rating | platform     | series_id |
+---------------------+--------------------+--------------+-------------+--------------+-----------+
| Mismatched          | Rohit saraf        |         2009 |         9.1 | Netflix      |      NULL |
| 13 Reason why       | Katherine langford |         2013 |         8.1 | Netflix      |      NULL |
| Originals           | Joseph morgan      |         2013 |         8.9 | Amazon prime |      NULL |
| The vampire dairies | Ian somelhalder    |         2009 |         8.5 | Amazon prime |      NULL |
| Stranger things     | Fin wolfhard       |         2018 |         7.8 | Netflix      |      NULL |
+---------------------+--------------------+--------------+-------------+--------------+-----------+
5 rows in set (0.02 sec)

/*sub query*/

mysql> select * from series where release_date>(select release_date from series where series_name="Mismatched");
+-----------------+--------------------+--------------+-------------+--------------+-----------+
| series_name     | lead_actor         | release_date | imdb_rating | platform     | series_id |
+-----------------+--------------------+--------------+-------------+--------------+-----------+
| Stranger things | Fin wolfhard       |         2018 |         7.8 | Netflix      |      NULL |
| 13 Reason why   | Katherine langford |         2013 |         8.1 | Netflix      |      NULL |
| Originals       | Joseph morgan      |         2013 |         8.9 | Amazon prime |      NULL |
+-----------------+--------------------+--------------+-------------+--------------+-----------+
3 rows in set (0.00 sec)
