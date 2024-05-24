create database lovely_read;
\c lovely_read;

create table author(
    author_id int primary key,
    author_name varchar(255),
    country varchar(255)
);

create table book(
    book_id int primary key,
    title varchar(200),
    publication_year date,
    number_of_pages int check(number_of_pages > 0),
    author_id int,
    foreign key (author_id) references author(author_id)
);

create table member(
    member_id int primary key,
    first_name varchar(200),
    last_name varchar(200),
    "address" text,
    email varchar(200),
    phone varchar(15)
);

create table borrow(
    borrowing_date date,
    return_date date,
    member_id int,
    book_id int,
    foreign key (member_id) references member(member_id),
    foreign key (book_id) references book(book_id)
);

create table review(
    starts int check(starts between 0 and 5),
    review_description text,
    created_at date,
    member_id int,
    book_id int,
    foreign key (member_id) references member(member_id),
    foreign key (book_id) references book(book_id)
);

alter table author rename author_name to author_full_name;
alter table member add column "password" varchar(50);

insert into autho valuesr(1, 'Walker','Paris');
insert into book values(1, 'Love','1999-06-26',20,2);
insert into member values(1,'M','M','CHII-38 Isoavimasoandro','M@gmail.com','0345678909','M_love123*');
insert into review values(5,'Super',current_date,1,1);

select book.title, borrow.borrowing_date,member.first_name,member.last_name, member.email 
from borrow inner join member 
on member.member_id = borrow.member_id 
inner join book 
on book.book_id = borrow.book_id 
order by borrowing_date desc; 

insert into borrow(borrowing_date,member_id,book_id) values('2024-06-20',1,2);

select book.title, borrow.borrowing_date,member.first_name,member.last_name
from borrow inner join member 
on member.member_id = borrow.member_id 
inner join book 
on book.book_id = borrow.book_id where return_date is null; 

select book.title, member.first_name,member.last_name, author.author_full_name,review.starts,review.review_description,review.created_at
from review inner join member on member.member_id = review.member_id inner join book on book.book_id=review.book_id inner join author on author.author_id=book.author_id order by created_at desc limit 10;

select book.title, review.starts, review.review_description from book left join review on book.book_id=review.book_id order by book.title asc;

insert into review(starts,created_at,member_id,book_id) values(4,'2024-06-18',1,2);