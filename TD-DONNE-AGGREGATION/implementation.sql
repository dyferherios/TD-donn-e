create database notes;
\c notes;

create table student(
    student_id int primary key, 
    student_first_name varchar (150), 
    student_last_name varchar (150), 
    gender char (1)
);

create table course(
    course_id int primary key, 
    course_name varchar(100), 
    credits int
);

create table teacher (
    teacher_id int primary key, 
    teacher_first_name varchar(100),
    teaher_last_name varchar(100)
);

alter table course add column teacher_id int;
alter table course add constraint fk_teacher foreign key (teacher_id) references teacher(teacher_id);

create table have_grade (
    student_id int, 
    course_id int
);

alter table have_grade add constraint fk_student foreign key (student_id) references student(student_id);
alter table have_grade add constraint fk_course foreign key (course_id) references course(course_id);

-- INSERTION DANS STUDENT 
insert into student values (1, 'Nomena', 'Fitahiana', 'f'), (3, 'Vaninah', 'Jey', 'f'), (2, 'Stéphanie', 'Chan Pong Mye', 'f'), (4, 'Kiady', 'Henikhaja', 'm');

-- INSERTION DANS TEACHER
insert into teacher values (1, 'Toky', 'Andriamahery') , (2, 'Jean', 'Mark'), (3, 'Mme', 'Sandrine'), (4, 'Ilo', 'Ares');

-- INSERTION DANS COURSE
insert into course values (1, 'PROG', 6), (2, 'WEB', 4), (3, 'MGT', 4), (4, 'DONNEE', 5);

alter table have_grade add column value float check  (value between 0 and 20); 

-- INSERTION DANS HAVE_GRADE
insert into have_grade values (1, 1, 16), (1, 2, 16), (1, 3, 16), (1, 4, 12), (2, 1, 15), (2, 2, 12), (2, 3, 4), (2, 4, 10), (3, 1, 20), (3, 2, 12), (3, 3, 17), (3, 4, 14), (4, 1, 09), (4, 2, 10), (4, 3, 11), (4, 4, 07);

-- AFFICHER LES NOTES, PRENOMS, NOMS AINSI QUE LE NOM DES COURS
select student_first_name, student_last_name, course_name, value from have_grade join student on student.student_id = have_grade.student_id join course on course.course_id = have_grade.course_id;

-- Email: hei.iloniavo@gmail.com
-- Objet: TD Intro FK - STDXXXXX
-- Deadline: 

alter table student add column email varchar(250);
select count(*) from student;
select count(email) from student;
select avg(value) from have_grade;
select min(value),max(value) from have_grade;
select course_id,avg(value) from have_grade group by course_id order by avg(value) desc limit 1;
select count(student_id) from have_grade where course_id = 1 and value >= 18;
select Student.gender, avg(value) from have_grade inner join student on have_grade.student_id = Student.student_id group by gender;
select teacher.teacher_first_name,teacher.teacher_last_name,count(course.teacher_id) from course  inner join teacher on course.teacher_id = teacher.teacher_id group by teacher.teacher_id;
select course_name,avg(value) from have_grade inner join course on have_grade.course_id=course.course_id group by course_name having (avg(value) between 15 and 20);
select
    teacher.teacher_first_name,
    teacher.teacher_last_name,
    avg(have_grade.value) as moyenne_obtenue
from 
    teacher
inner join 
    course on teacher.teacher_id = course.teacher_id
inner join 
    have_grade on course.course_id = have_grade.course_id
group by
    teacher.teacher_id;