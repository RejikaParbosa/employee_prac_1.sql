use bca3_2022_30;

create table student
(
	Roll_no int (5) primary key,
	student_name varchar (20),
	Address varchar (50),
	Date_of_admission date,
	Class varchar (10),
    Section varchar (8),
	Contact_no varchar (15)
);

insert into student(Roll_no,Student_name,Address,Date_of_admission,Class,Section,Contact_no)
values
(1,"Riya","Panbazaar",'2006-06-01',"BCA 1stsem","1st sem","+919610102789"),
(2,"Dimpi","Ulubari",'2007-01-01',"BCA 2ndsem","2nd sem","+916224587555"),
(3,"Rohan","Panbazaar",'2005-01-01',"BCA 2ndsem","2nd sem","+916005446332"),
(4,"Viraj","Paltanbazaar",'2007-06-01',"BCA 3rdsem","3rd sem","+918552443057");

Delete from student
where Roll_no=2;
select * from student;

select * from student
where Roll_no>1;

select * from student
where Date_of_admission<"2006-06-01";

update student
set student_name="Amar"
where Roll_no=3;

select * from student;