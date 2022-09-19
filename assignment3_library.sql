/*
create table Borrowert(rollno int,Name varchar(20),doi date,nameOfBook varchar(20),status varchar(5));
create table fines(roll_no int,todaydate date,amnt int);
insert into Borrowert values(01,'Gauri','08-05-2022','DBMS','i');
insert into Borrowert values(02,'Tanisha','12-10-2022','TOC','i');
insert into Borrowert values(03,'Surabhi','08-06-2022','SPOS','i');
insert into Borrowert values(04,'Nicky','18-09-2022','CNS','i');
insert into Borrowert values(05,'Gia','09-05-2022','SPM','i');
insert into Borrowert values(06,'Shrishti','03-10-2022','TOC','i');
insert into Borrowert values(07,'Siddhi','08-05-2022','DBMS','i');
insert into Borrowert values(08,'Prajakta','23-11-2022','OOP','i');
select * from Borrowert;
select * from fines;
*/

DECLARE 
roll_number number;
name1 varchar(20);
dateofissue date;
System_date date;
noOfDays number(20);
amnt number;
BEGIN
roll_number:=:roll_number;
name1:=:name1;
select Sysdate into System_date from dual;
select doi into dateofissue from borrowert where rollno=roll_number and nameOfBook=name1;
dbms_output.put_line(dateofissue);
noOfDays:=System_date - dateofissue;
dbms_output.put_line(noOfDays);
if noOfDays>15 and noOfdays<30 then
amnt:=noOfdays*5;
dbms_output.put_line('Fine: ' ||amnt);
elsif noOfdays>30 then
amnt:=noOfdays*50;
dbms_output.put_line('Fine: ' ||amnt);
else
dbms_output.put_line('No fine');
END IF;
IF noOfDays>15 THEN
INSERT INTO fines values(roll_number,Sysdate,amnt);
UPDATE borrowert set status ='r' where rollno=roll_number;
END if;
exception
when no_data_found then
dbms_output.put_line(roll_number||' Not Found');

END;
/
