use testing;
select count(*) as Total_students from student;

select count(*) as Total_course from course;

select avg(credits) as Average_credits from course;

select min(credits) as Minimum_credits, max(credits) as Maximum_credits from course;

select rollno,name,department from student order by name asc;

select courseID,title, credits from course order by credits desc;

select department,count(*) as No_of_Students from student group by department;

select department, count(*) as Student_Count from student group by department having count(*)>2;