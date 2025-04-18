create database if not exists gfg;

use gfg;

create table if not exists users(
	join_date DATETIME default current_timestamp,
	user_id INT PRIMARY KEY AUTO_INCREMENT UNIQUE,
    username varchar(255) not null,
    email varchar(255) default 'abc@gmail.com',
    age int check(age >= 18),
    city varchar(255)
);

insert into users values (1,'user1','user1@gmail.com',25,'city1');
insert into users values (2,'user2','user2@gmail.com',22,'city2');

select * from users;