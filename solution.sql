create database hei_admin;

\c hei_admin;

create table "user"(
    id varchar(200),
    firt_name varchar(100),
    last_name varchar(100),
    email varchar(200),
    ref varchar(8),
    "status" varchar(15),
    sex char(1),
    birth_date date,
    enfrance_datatime timestamp,
    phone varchar(1),
    "address" text,
    "role" char(1) check("role" in('S','T','M'))
);

alter table "user" add constraint uc_user_id unique(id);
alter table course add constraint uc_course_id unique(id);


create table follow(
    id int,
    user_id varchar(200),
    course_id varchar(200),
    constraint fk_user_id foreign key (user_id) references "user"(id),
    constraint fk_course_id foreign key (course_id) references course(id)
);

create table course(
    id varchar(200),
    ref varchar(20),
    "name" varchar(200),
    total_hours int
);


create table "group"(
    id varchar(200),
    ref varchar(50),
    creation_datetime timestamp
);

create table exam(
    id varchar(200),
    exam_date date,
    duration time
);

alter table exam add column course_name varchar(200);

alter table exam add constraint fk_course_id foreign key (course_id) references course(id);

alter table exam add constraint uc_exam_id unique(id);

create table have_grade(
    id int,
    point float,
    user_id varchar(200),
    exam_id varchar(200),
    foreign key (user_id) references "user"(id),
    foreign key (exam_id) references exam(id)
);

alter table "group" add constraint uc_group_id unique(id);

alter table "user" add column group_id varchar(200);

alter table "user" add constraint fk_group_id foreign key (group_id) references "group"(id);


