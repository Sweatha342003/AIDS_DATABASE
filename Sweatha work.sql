create database MEC_COLLEGEDETAILS;
use MEC_COLLEGEDETAILS;
create table students_detail(student_name varchar(255)not null,
student_age int not null,
student_palce varchar(255)not null,
student_percentage double not null,
student_mobile bigint not null);
select*from students_detail;
alter table students_detail add dept varchar(255)not null;
alter table students_detail change student_palce place varchar(255)not null;
alter table students_detail add rollno int not null;
alter table students_detail add primary key(rollno);
alter table students_detail change rollno registerno int auto_increment;
alter table students_detail drop column student_percentage;
insert into students_detail values("Pradeep",21,"Salem",8484600868,"AI&DS",1);
insert into students_detail values("Sweatha",21,"Salem",9843401953,"AI&DS",2);
insert into students_detail values("Saisruthi",24,"Salem",9742630646,"MBA",3);
update students_detail set student_age=23 where student_age=24;
delete from students_detail where student_age=23;
select* from students_detail where dept="AI&DS";
select count(*) place from students_detail GROUP BY place;
insert into students_detail values("Vishmaya",20,"Namakkal",8943501953,"CSE",3);
insert into students_detail values("Vikarath",20,"Namakkal",7980564271,"IT",4);
select count(*) place from students_detail GROUP BY place having place="Salem";
select * from students_detail where place in ("Salem","Namakkal");
select * from students_detail limit 4;
select * from students_detail where student_name like "a%";
select min(student_age) from students_detail;
select * from students_detail where student_name like "%a";
select max(student_age) from students_detail;
select avg(student_age) from students_detail;
select sum(student_age) from students_detail;


