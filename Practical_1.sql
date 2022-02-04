use bca3_2022_30;

create table Employee3(
Emp_no int(5) primary key,
Emp_name varchar(20),
Join_date date,
Basic_pay_fixed_at decimal(10,2),
Date_of_birth date);

select * from Employee3;

insert into Employee3(Emp_no,Emp_name,Join_date,Basic_pay_fixed_at,Date_of_birth)
values (1001,"Charles Babbage",'2000-06-01',8000.00,'1973-10-03'),
(1002,"George Boole",'2001-07-01',5000.00,'1972-12-04'),
(1003,"E.F. Codd",'2000-06-01',8000.00,'1969-03-06'),
(1004,"Bill Gates",'2003-07-01',5000.00,'1995-10-09'),
(1005,"Tony Greig",'2004-08-01',8000.00,'1985-05-04');
