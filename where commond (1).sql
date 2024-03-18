use s1;
select * from customers;

/*equal to commond*/
select customerName from customers where contactFirstName="matti";
select contactLastName,contactFirstName,addressLine1,country  from customers where country="France";

/*greater than commond*/
select city,postalCode from customers where postalCode>'1734';
select contactFirstName,addressLine1,customerNumber,postalCode,creditLimit from customers where creditLimit>'59600';

/*less than commond*/
select contactLastName,postalCode from customers where postalCode<'10022';
select contactLastName,postalCode from customers where postalCode<'1012';

/*greater than and equal to*/
select city,postalCode from customers where postalCode>='1734';
select contactFirstName,addressLine1,customerNumber,postalCode,creditLimit from customers where creditLimit>='59600';
select * from customers where postalCode>='1734';

/*not equal to commond*/
select city from customers where postalCode<>1734;
select * from customers where city!="Paris";

/*between commond*/
select * from customers where postalCode between 4110 and 94217;

/*in commond*/
select * from customers where postalCode in(2,3004,'60528');