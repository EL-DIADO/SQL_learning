use testing;


insert into student(rollno, name, DateOfBirth, department)values(1008, 'Deepu', '2002-12-22', 'Mathematics');
select * from student;


insert into Instructor  values(104, 'Dr.Joseph Mathew', 'Computer Science'),(105, 'Dr.Kavya Nair', 'Mathematics');
select * from Instructor;


update student set department = 'Computer Applications' where rollno = 1008;
select * from student;


update course set credits = 5 where title like '%Systems%';
select * from course;


select rollno,Name from student;


delete from student where rollno=1005;
select * from student;


select * from enrollment;
delete from enrollment where grade='B';
select * from enrollment;


select * from student where department='Data Science';
update student set DateOfBirth='2003-06-08' where Name='Divya.P';
select * from student where rollno=1003;
