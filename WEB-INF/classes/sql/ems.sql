drop table ems purge;
管理员表
create table ems(
id Integer primary key,
username varchar2(20) not null,
realname varchar2(20) not null,
passwd   varchar2(6) not null,
sex      int         not null 
)
create sequence seq;
--------------------------------------
部门表
create table dept(
	deptname varchar2(20) primary key
)
-----------------------------------------------------------------------------
雇员表
create table emp(
	id Integer primary key,
	e_name varchar2(20) not null,
	e_salary  number(6,2)  not null ,
	e_age      Integer     not null,
	e_birthday date not null,
	e_dept varchar2(20) not null,
	constraint fk_name foreign key(e_dept) references dept(deptname)
)
create sequence seq1;
---------------------------------------------------------------------------------------
insert into ems(id,username,realname,passwd,sex)values(seq.nextval,'jsfk','fj','123456',0)
select * from ems;
delect 