create database testing;
use testing;




 drop table table_nm;
show tables;
create table table_nm(id int, Name varchar(20), age int);
insert into table_nm values(1,'Jeyaprasad.K', 20);
select * from table_nm;
show tables;
show databases;
drop database test_db;
drop database trial;
show databases;
drop database test;
show databases;

insert into table_nm values(2,'Abhinaya.K', 22);
select * from table_nm;

alter table table_nm add column email varchar(50);
select * from table_nm;
desc table_nm;
