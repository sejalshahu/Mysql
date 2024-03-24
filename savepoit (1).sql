use s1;
select * from student_1;
start transaction;
savepoint h1;
insert into student_1 values(10,"priya","arts",987);
select * from student_1;
rollback to h1;
select * from student_1;