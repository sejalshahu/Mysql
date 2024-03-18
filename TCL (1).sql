show databases;
use s1;
select * from student_1;
insert into student_1 values(4,"ketki","BSC",134);
select * from student_1;
start transaction;
insert into student_1 values(5,"rahul","science",354);
select * from student_1;
/*rollbackused to undo one or more changes.*/
rollback;
select * from student_1;
  
 /*commit*/
 start transaction;
update student_1 set student_name="pooja" where roll_no=134;
select * from student_1;
/*now use commit command before rollback*/
commit;
rollback;
select * from student_1; 