create table  STUDENT1
(
	Roll_no int(5) primary key,
	Sname varchar(10),
	Semester varchar(15),
	Course_no int(5) references COURSE(Course_no)
);

insert STUDENT1(Roll_no,Sname,Semester,Course_no)
values
(1,"Namita","BSc 1st sem",123),
(2,"Neha","BSc 3rd sem",123),
(3,"Sima","BA 1st sem",121),
(4,"Parinita","BCA 3rd sem",120),
(5,"Jiya","BCom 1st sem",122);

create table COURSE
(
Course_no int(5) primary key,
Course_name varchar(20)
);

insert into COURSE(Course_no,Course_name)
values
(120,"BCA"),
(121,"BA"),
(122,"BCom"),
(123,"BSc");

select * from STUDENT1;

select * from COURSE;

select Sname
from STUDENT1,COURSE
where COURSE.Course_no=STUDENT1.Course_no
and Course_name="BCA"

select Roll_no,Sname
from STUDENT1,COURSE
where COURSE.Course_no=STUDENT1.Course_no
and Course_name="BCA"
and Semester="BCA 3rd sem";

select c.Course_no,c.Course_name,count(*)
from COURSE as c, STUDENT1 as s
where c.Course_no=c.Course_name
having count(*)>1;

select c.Course_no,c.Course_name,count(*)
from COURSE as c, STUDENT1 as s
where c.Course_no=s.Course_no
group by c.Course_no,c.Course_name;