/*Q1. Write the SQL query to get the maximum salary of an employee from a table
named employees.*/
use s1;
create table employee_table(employee_name char(20),salary int);
insert into employee_table values("A",24000),("C",34000),("D",55000),("E",75000),("F",21000),("G",40000),("H",50000);
select * from employee_table;
select max(salary) as max_salary from employee_table;

/*Q2.What is a Primary Key? Give one example.*/ 
/*A primary key is a unique identifier for each record in a database table.
 It is a special type of database constraint that ensures each row in the table has 
 a distinct and unique value for the primary key column. The primary key is used
 to uniquely identify each record, making it easy to retrieve, update, or delete 
 specific rows in the table.*/
 select * from employee_table;
 alter table employee_table modify employee_name char(20)primary key; 
desc employee_table;




/*Q3.How will you change the datatype of a column?*/
select * from employee_table;
alter table employee_table modify employee_name varchar(20); 
desc employee_table;

/* Q4.Table: products
Columns: product_id, product_name, price
Problem: Find all products with a price greater than $50.*/
drop table products;
create table products(product_id int,product_name char(20),price varchar(20));
insert into products values(101,"ZIP drive","$200"),(102,"DVD drive","$50"),(103,"CD drive","$30"),(104,"printer","$73"),(105,"key board","$40"),(106,"speaker","$111");
select * from products;
select * from products where price>'$50';

/*Q5. Table: employees
Columns: employee_id, name, salary
Problem: List employees in descending order of salary.*/
create table employees(employee_id int,name char(20),salary int);
insert into employees values(1,"sejal",50000),(2,"harshada",30000),(3,"ketki",33000),(4,"trupti",17000),(5,"sahil",40000),(6,"ankit",11000);
select * from employees;
select * from employees order by salary desc;

/*Q6. Table: students
Columns: student_id, name, age
Problem: Insert a new student with the name "Alice" and age 22.*/
create table students(student_id int,name char(20),age int);
insert into students values(11,"sejal",21),(22,"harshada",20),(33,"ketki",18),(44,"kajal",19),(55,"himanshu",16);
select * from students;
insert into students values(null,"Alice",22);

/*Q7.Write an SQL query to find the names of employees starting with “A”.*/
use w3schools;
select * from employees;
select * from employees where FirstName like 'A%';

/*Q8. What are the types of joins in SQL?*/
/*In SQL, joins are used to combine rows from two or more tables based on a related
 column between them. Here are the main types of joins, explained in an easy way:
1.INNER JOIN:
   - Think of it like a Venn diagram. An INNER JOIN returns only the overlapping region
   (common records) between two tables.
   - It includes only the rows where there is a match in the specified columns of both tables.

2.LEFT JOIN (or LEFT OUTER JOIN):
   - Imagine the left table as the main focus. A LEFT JOIN returns all the rows from the left table and the matching rows from the right table.
   - If there's no match in the right table, NULL values are returned for columns from the right table.

3.RIGHT JOIN (or RIGHT OUTER JOIN):
   - Similar to LEFT JOIN but with a focus on the right table. It returns all the rows from the right table and the matching rows from the left table.
   - If there's no match in the left table, NULL values are returned for columns from the left table.

4.FULL JOIN (or FULL OUTER JOIN):
   - Picture combining both tables entirely. A FULL JOIN returns all rows from both tables, with NULL values where there is no match.
   - It includes the union of both the left and right tables' rows.

These joins help link related information in different tables, allowing you to retrieve and analyze data from multiple sources in a meaningful way.*/


/*Q9. Tables: employees, departments
Columns: employee_id, name, salary, department_id, department_name
Problem: Retrieve the names of employees who earn more than the average salary
in their respective departments.*/
use s1;
select * from employee_1;
alter table employee_1 add column department_id int;
update employee_1 set department_id=432 where employee_id=1;
update employee_1 set department_id=786 where employee_id=2;
update employee_1 set department_id=648 where employee_id=3;
update employee_1 set department_id=466 where employee_id=4;
update employee_1 set department_id=400 where employee_id=5;
update employee_1 set department_id=430 where employee_id=6;
update employee_1 set department_id=42 where employee_id=7;
update employee_1 set department_id=100 where employee_id=0;
select avg(salary) as avg_salary from employee_1;
select employee_name,department,salary from employee_1 where salary>(select avg(salary) as avg_salary from employee_1);

/*Q10. Table: orders
Columns: order_id, order_date, total_amount
Problem: Find the total order amount for each month of the year*/
 use w3schools;
 select * from orders;
 
 
 /*Q11. Table: customers
Columns: customer_id, customer_name, email
Problem: Insert a new customer with a unique customer ID and email address.*/
use s1;
drop table customers;
create table customers(customer_id int unique,customer_name char(20),email varchar(20)unique);
insert into customers values(10,"sejal","shahu12@mail.com"),(20,"harshada","zade12@mail.com"),(30,"abc","abc12@mail.com"),(40,"prachi","prachi12@mail.com");
select * from customers;
insert into customers values(10,"sejal","shahu12@mail.com");
insert into customers values(11,"sejal","xyz12@mail.com");


