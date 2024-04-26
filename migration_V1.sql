alter table course add column credits int check(credits>0);

alter table "user" alter column phone type varchar(18);