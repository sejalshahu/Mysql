show databases;
use s1;
create table student(ID int,name char(10),dept char(10));
select * from student;
insert into student values(1,"sejal","bca"),(2,"kajal","btech"),(3,"harshada","bca"),(4,"anuja","bsc");
select * from student;
truncate table student;
drop table student;
/*alter works on column*/
alter table student rename column name to student_name;
alter table  student add column roll_no int;
select * from student;

/*update work on column*/
update student set roll_no=11 where student_name="sejal";
update student set roll_no=12 where id=2;
update student set roll_no=13 where id=3;
update student set roll_no=14 where id=4;
select * from student;
desc student;
alter table student modify column id