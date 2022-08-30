Microsoft Windows [Version 10.0.19044.1288]
(c) Microsoft Corporation. All rights reserved.

C:\Users\DELL>sql plus
'sql' is not recognized as an internal or external command,
operable program or batch file.

C:\Users\DELL>sqlplus

SQL*Plus: Release 11.2.0.2.0 Production on Tue Aug 30 10:04:07 2022

Copyright (c) 1982, 2014, Oracle.  All rights reserved.

Enter user-name: system
Enter password:

Connected to:
Oracle Database 11g Express Edition Release 11.2.0.2.0 - 64bit Production

SQL> begin
  2  dbms_output.put_line('hello world');
  3  end;
  4  /

PL/SQL procedure successfully completed.

SQL> /

PL/SQL procedure successfully completed.

SQL> set serverout on
SQL> begin
  2  dbms_output.put_line('hello world');
  3  end;
  4  /
hello world

PL/SQL procedure successfully completed.

SQL> @C:\Users\DELL\Desktop\firstplsql
Greater number is :2
Greater number is :3

PL/SQL procedure successfully completed.

SQL>


