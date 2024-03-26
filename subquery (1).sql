use HR_Analytics;
select * from employees;
select max(salary) from employees;
select employee_id,first_name,last_name,salary from employees 
where salary=(select max(salary) from employees);
select avg(salary) from employees;
select * from employees 
where salary<(select avg(salary) from employees);

select employee_id,first_name,last_name,salary from employees 
where salary>(select avg(salary) from employees);

select employee_id,first_name,last_name,salary from employees 
where salary!=(select avg(salary) from employees);


/*ALL:
The ALL operator returns TRUE if the comparison is true for all values in the result set of the subquery.
SELECT * FROM products WHERE price > ALL (SELECT price FROM competitors WHERE product_id = products.id);*/
create table lecturer (name char(20), age int);
insert into lecturer values("A",43),("B",52),("C",51),("D",35),("E",40);
insert into lecturer values("H",43);
select * from lecturer;
 drop table student1;
create table student1 (name char(20),age int);
insert into student1 values("X",20),("Y",21),("Z",19),("P",37),("Q",57);
insert into student1 values("H",43);
select * from student1;

select * from student1
where age>=all(select age from lecturer);

/*ANY:
The ANY operator returns TRUE if the comparison is true for at least one of the values in the result set of the subquery.
SELECT * FROM employees WHERE salary = ANY (SELECT salary FROM other_employees WHERE department = 'Sales');
*/

select * from student1
where age>=any(select age from lecturer);