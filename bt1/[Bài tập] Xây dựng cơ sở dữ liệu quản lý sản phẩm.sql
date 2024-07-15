-- SELECT * FROM test.class;
use test;
create table product(
id int auto_increment primary key,
name varchar(100) not null,
created date);

create table color(
id int auto_increment primary key,
name varchar(100) not null,
status bit);

create table size(
id int auto_increment primary key,
name varchar(100) not null,
status bit);

create table product_detail(
id int auto_increment primary key,
product_id int,
foreign key (product_id) references product(id),
color_id int,
foreign key (color_id) references color(id),
size_id int,
foreign key(size_id) references size(id),
price double default 1 check (price > 0),
stock int,
status bit);

drop table product;
drop table color;
drop table size;
drop table class;