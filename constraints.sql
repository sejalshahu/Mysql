use s1;
create table Departments(Dept_ID int, Dept_Name varchar(25),Student_name varchar(25),Joinig_date date);
select * from Departments;
desc Departments;
insert into Departments values(1,"Electrical","Sarthak","2023-04-08");
insert into Departments values(2,"Electrical","chetana","2023-06-08");
insert into Departments values(3,"Mechanical","Sahil","2023-09-06");
insert into Departments values(4,"Computer","Sayli","2023-08-08");
insert into Departments values(1,"Electrical","Sarthak",null);
alter table departments 
add column city varchar(20) not null;
select * from Departments;
insert into Departments values(1,"Electronics","Priyanks",null,"Ratnagiri");
insert into Departments values(5,"computer","Trupti",null,null);

alter table Departments 
modify column dept_id int unique;
drop table Departments;

create table person(ID int auto_increment primary key,lastname varchar(25) not null,firstname varchar(25) unique);
select * from person;
alter table person 
add column age int check(age>=18);
insert into person values(1,"vasave","chetana",26);
insert into person values(3,"jaiswal","sarthak",27);
insert into person values(7,"shahu","sejal",21);
insert into person values(6,"zade","harshada",17);

drop table person;
create table person(ID int auto_increment primary key,lastname varchar(25) not null,firstname varchar(25) unique,age int,city varchar(25),
constraint check_person check (age>=20 and city="pune"));
insert into person values(2,"wagh","sahil",21,"pune");
insert into person values(3,"shahu","sejal",32,"mumbai");
insert into person values(9,"iuildlk","sjhhgs",32,null);
insert into person values(10,"iuilsu","vbsdbh",18,"Pune");
select * from person;

drop table person;
create table person(ID int auto_increment primary key,lastname varchar(25) not null,firstname varchar(25) unique,city varchar(25) default "PUNE");
insert into person values(2,"vasave","sahil","rar");
insert into person values(3,"ghdav","sarthak","mumbai");
insert into person values(9,"iuildlk","sjhhgs",null);
insert into person values(10,"iuilsu","vbsdbh","Pune");
insert into person (ID,lastname,firstname) values(11,"ssa","cs");
insert into person (lastname,firstname) values("shahu","sejal");
select * from person;

/* index constraint is used to retrive data from database fasteer than any other way */
select * from person;
create index index1 
on person (ID,lastname,firstname,city);
show index from person;

select * from departments;
create index abc
on departments (dept_ID,dept_name);
show index from departments;
drop index abc on departments;

/**Autoincrement*/
drop table person;
create table person(Person_ID int not null auto_increment,lastname varchar(25),primary key (Person_ID));
select * from person;
insert into person(lastname) values("shahu");
insert into person(lastname) values("zade");
insert into person values(5,"abc");

/*view*/
select * from departments;
create view ABC as
select Dept_ID,Student_name from departments
where Dept_ID=3;
select * from abc;
drop view ABC;





