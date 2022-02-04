create table employee
(
	Empno int(5) primary key,
	Empname varchar(20),
	Empaddress varchar(50),
	Dno int(5) references DEPARTMENT(Dno)
);

insert into employee(Empno,Empname,Empaddress,Dno)
values
	(1,"Mr. Khanna","Panbazaar",121),
	(2,"Mr. Roy","Ganeshguri",123),
	(3,"Mr. Sharma","Ambari",121),
	(4,"Mr. Verma","Maligaon",124),
	(5,"Mr. Das","Fancy Bazaar",122);

create table DEPARTMENT
(
	Dno int(5),
	Dname varchar(50),
	Dlocation varchar(20)
);

insert DEPARTMENT (Dno,Dname,Dlocation)
values
	(121,"Finance Department","First Floor"),
	(122,"Administration Department","Ground Floor"),
	(123,"Accounts Depatment","Second Floor"),
	(124,"IT Department","Third Floor");

select Empname, Empaddress
from employee, DEPARTMENT
where DEPARTMENT.Dno=employee.Dno
and Dname="Finance Department";

select Dlocation,Dname
from DEPARTMENT
where Dname="Administration Department";

delete from employee
where Empno=3;

select * from employee;