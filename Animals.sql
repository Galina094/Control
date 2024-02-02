create database Humans_friends;

use Humans_friends;

create table class_animals(
	id int auto_increment primary key,
    name varchar(30)
);

insert into class_animals (name)
values ('домашние'), ('вьючные');

create table pets(
id int auto_increment primary key,
name_of_pet varchar (30),
id_of_class int,
foreign key (id_of_class) references class_animals (id) on delete cascade on update cascade
);

insert into pets (name_of_pet, id_of_class)
values ('Cats', 1),
('Dogs', 1),
('Rabbits',1);

create table pack_animals(
id int auto_increment primary key,
name_of_pet varchar (30),
id_of_class int,
foreign key (id_of_class) references class_animals (id) on delete cascade on update cascade
);

insert into pack_animals (name_of_pet, id_of_class)
values ('Horses', 2),
('Camels', 2),
('Donkeys', 2);

create table cats(
id int auto_increment primary key,
name varchar(30),
birthday date,
commands varchar(30),
id_of_class int,
foreign key (id_of_class) references pets(id) on delete cascade on update cascade
);

insert into cats (name, birthday, commands, id_of_class)
values ('Murka', '2020-02-12', 'kitty-kitty-kitty', 1),
('Missy', '2018-12-15', 'Come on', 1),
('Pussy', '2022-06-05', 'Place', 1);

create table dogs(
id int auto_increment primary key,
name varchar(30),
birthday date,
commands varchar(30),
id_of_class int,
foreign key (id_of_class) references pets(id) on delete cascade on update cascade
);

insert into dogs (name, birthday, commands, id_of_class)
values ('Bobik', '2015-02-12', 'Come to me', 2),
('Bulya', '2019-12-15', 'Sit down', 2),
('Klaus', '2018-09-06', 'Lay down', 2);

create table rabbits(
id int auto_increment primary key,
name varchar(30),
birthday date,
commands varchar(30),
id_of_class int,
foreign key (id_of_class) references pets(id) on delete cascade on update cascade
);

insert into rabbits (name, birthday, commands, id_of_class)
values ('Busya', '2023-09-10', 'Come to me', 3);

create table horses(
id int auto_increment primary key,
name varchar(30),
birthday date,
commands varchar(30),
id_of_class int,
foreign key (id_of_class) references pack_animals(id) on delete cascade on update cascade
);

insert into horses (name, birthday, commands, id_of_class)
values ('Black', '2010-02-12', 'Nooooo', 1),
('Chubays', '2012-12-15', 'Gait', 1),
('Mous', '2008-09-06', 'Gallop', 1);


create table camels(
id int auto_increment primary key,
name varchar(30),
birthday date,
commands varchar(30),
id_of_class int,
foreign key (id_of_class) references pack_animals(id) on delete cascade on update cascade
);

insert into horses (name, birthday, commands, id_of_class)
values ('Boris', '2010-12-12', 'Down', 2),
('Mariya', '2012-12-12', 'Go', 2);

create table donkeys(
id int auto_increment primary key,
name varchar(30),
birthday date,
commands varchar(30),
id_of_class int,
foreign key (id_of_class) references pack_animals(id) on delete cascade on update cascade
);

insert into horses (name, birthday, commands, id_of_class)
values ('Ia', '2010-06-06', 'Go', 3),
('Ai', '2012-06-06', 'Stay', 3);

drop table camels;

select name, birthday, commands from horses
union select name, birthday, commands from donkeys;

CREATE TEMPORARY TABLE animals AS 
SELECT *, 'Лошади' as genus FROM horses
UNION SELECT *, 'Ослы' AS genus FROM donkeys
UNION SELECT *, 'Собаки' AS genus FROM dogs
UNION SELECT *, 'Кошки' AS genus FROM cats
UNION SELECT *, 'Кроли' AS genus FROM rabbits;

CREATE TABLE yang_animals AS
SELECT name, birthday, commands, id_of_class, TIMESTAMPDIFF(MONTH, birthday, CURDATE()) AS Age_in_month
FROM animals WHERE birthday BETWEEN ADDDATE(curdate(), INTERVAL -3 YEAR) AND ADDDATE(CURDATE(), INTERVAL -1 YEAR);


SELECT h.name, h.birthday, h.commands, h.id_of_class 
FROM horses h
LEFT JOIN pack_animals pa ON pa.Id = h.id_of_class
union 
SELECT c.name, c.birthday, c.commands, c.id_of_class 
FROM cats c
join pets p ON p.Id = c.id_of_class
union
SELECT d.name, d.birthday, d.commands, d.id_of_class 
FROM dogs d
join pets p ON p.Id = d.id_of_class
union
SELECT r.name, r.birthday, r.commands, r.id_of_class 
FROM rabbits r
join pets p ON p.Id = r.id_of_class;








