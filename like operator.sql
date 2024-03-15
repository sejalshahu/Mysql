use w3schools;
select * from customers;

/*a% operator*/
select * from customers;
select * from customers where CustomerName like 'c%';
select customerid,contactname,address,city from customers where City like 'b%';
select * from customers where Address like 'w%';

/*%a operator*/
select * from customers;
select * from customers where Country like '%o';
select postalcode,contactname,customerid from customers where contactname like '%s';
select customerid,contactname from customers where ContactName like '%i';

/*%a% operator*/
select * from customers;
select * from customers where CustomerName like '%ed%';
select customerid,customername,city from customers where city like '%pi%';
select city,customername from customers where CustomerName like '%mer%';

/*_r% operator*/
select * from customers;
select * from customers where Country like '_o%';
select address,city,postalcode from customers where city like '_r%';
select customerid,city,customername from customers where CustomerName like '_er%';

/*r_%_% operator*/
select * from customers;
select * from customers where customername like 'p_%_%';
select customername,customerid,postalcode,country,customer from customers where customername like 'i_%_%';

/*a%b operator*/
select * from customers;
select * from customers where customername like 'a%s';
select city,postalcode from customers where city like 'b%n';
select customername,customerid from customers where customername like 'b%e';

/*_abcd operator*/
select * from customers where city like '_ondon';
select * from customers where city like '____er';
select * from customers where city like '_erlin';

/*%ab% operator*/
select * from customers;
select * from customers where customername like '%mer%';
select * from customers where customername like '%ed%';


