use testing;

select * from student;
select rollno,Name from student where department='Computer Science' union select rollno,Name from student where department='Computer Applications';


select department from student union ALL select department from Instructor;


select department from student intersect select department from Instructor;


select department from student except select department from Instructor


select name from student where rollno in(select rollno from enrollment);


select name,DateOfBirth from student where DateOfBirth<(select avg(DateOfBirth) from student);


select title from course c where(select count(*) from enrollment e where e.courseID=c.courseID)>2;


select s.Name,c.title from student s join enrollment e on s.rollno=e.rollno join course c on e.courseID=c.courseID;


select s.Name,c.title from student s left join enrollment e on s.rollno=e.rollno left join course c on e.courseID=c.courseID;


select s.Name, c.title from student s right join enrollment e on s.rollno=e.rollno right join course c on e.courseID=c.courseID;


select a.Name as Instructor1, b.Name as Instructor2,a.department from Instructor a,instructor b where a.department=b.department and a.instructorID<b.instructorID;