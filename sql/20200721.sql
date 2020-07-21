create database test1;

use test1;

create table member (
	name varchar(255),
    age int
);

insert into member
values ('john', 33);

select * from member;

insert into member
values ('홍길동', 35);

alter table member add column
(
id int auto_increment primary key
);

select * from member;

create table money (
id int auto_increment primary key,
name varchar(255),
money int
);

insert into money (name, money) values 
('john', 1000);
insert into money (name, money) values
('jane', 1000);

update money set money = 
(money - 10)
where id=1;

update money set money = 
(money + 10)
where id=2;
select * from money;

alter table member add column (
	email varchar(255) not null,
    password varchar(255) not null
);
select * from member order by id desc;



