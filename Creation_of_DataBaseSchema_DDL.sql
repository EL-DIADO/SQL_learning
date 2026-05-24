use testing;


create table Instructor(InstructorID int primary key, name varchar(30) not null, department varchar(30));
select * from Instructor;
desc Instructor;


create table course(courseID int primary key, title varchar(30) not null, credits int check(credits>0), InstructorID int, foreign key(instructorID) references Instructor(InstructorID) on delete set null on update cascade);
select * from course;
desc course;


create table student(rollno int primary key, name varchar(30) not null, DOB date, department varchar(30));
select * from student;
desc student;


create table enrollment(rollno int, courseID int, grade char(2), primary key(rollno,courseID), foreign key(rollno) references student(rollno) on delete cascade on update cascade, foreign key(courseID) references course(courseID) on delete cascade on update cascade);
select * from enrollment;
desc enrollment;


create index idx_student_dept on student(department);
create index idx_course_instructor on course(InstructorID);


alter table student add email varchar(50);
desc student;
alter table student modify email varchar(100);
desc student;


alter table student change DOB DateOfBirth date;
desc student;


alter table student drop column email;
desc student;
