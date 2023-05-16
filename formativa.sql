create database ok;
use ok;


create table usuario(
id bigint not null auto_increment,
firstName varchar(100),
lastName varchar(100),
cpf varchar(150) not null,
gender enum('f', 'm') not null,
email varchar(150) not null,
birth datetime not null,
password varchar(150) not null,
registerDate datetime not null default now(),
primary key(id)
);

create table access_level(
id bigint not null auto_increment,
nome varchar(150) not null,
primary key (id)
);

create table usuario_occupation(
id bigint not null auto_increment,
occupation varchar(150) not null,
startDate datetime not null default now(),
endDate datetime,
usuario_FK bigint not null,
access_FK bigint not null,
foreign key(usuario_FK) references usuario(id),
foreign key(access_FK) references access_level(id),
primary key(id)
);


create table resources(
id bigint not null auto_increment,
equip1 varchar(150),
equip2 varchar(150),
equip3 varchar(150),
equip4 varchar(150),
equip5 varchar(150),
equip6 varchar(150),
equip7 varchar(150),
equip8 varchar(150),
equip9 varchar(150),
equip10 varchar(150),
primary key(id)
);



create table local(
id bigint not null auto_increment,
nameLocal varchar(150) not null,
bloco enum('A', 'B', 'C', 'D'),
resources_FK bigint not null,
foreign key(resources_FK) references resources(id),
primary key(id)
);











