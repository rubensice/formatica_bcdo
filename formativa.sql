
use ok;


create table usuario(
id bigint not null auto_increment,
firstName varchar(100),
lastName varchar(100),
cpf varchar(150) not null,
gender enum('f', 'm') not null,
email varchar(150) not null,
birth date not null,
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



create table infrastructure(
id bigint not null auto_increment,
projetor enum('yes','no'),
tv_smart enum('yes','no'),
ar_condicionado enum('yes','no'),
internet enum('yes','no'),
banheiros enum('yes','no'),
coffee_break enum('yes','no'),
acessibilidade enum('yes','no'),
bebedouros enum('yes','no'),
primary key(id)
);



create table local(
idLocal bigint not null auto_increment,
nameLocal varchar(150) not null,
bloco enum('A', 'B', 'C', 'D'),
infrastructure_FK bigint not null,
foreign key(infrastructure_FK) references infrastructure(id),
primary key(idLocal)
);

create table event(
idEvent bigint not null auto_increment,
eventName varchar(150),
eventDate datetime not null,
description varchar(500),
primary key(idEvent)
);

create table event_details(
id_details bigint not null auto_increment,
idEvent_FK bigint not null,
idLocal_FK bigint not null,
foreign key(idEvent_FK) references event(idEvent),
foreign key(idLocal_FK) references local(idLocal),
primary key (id_details)
);

create table check_in(
checkIn_ID bigint not null auto_increment,
checkDate datetime not null default now(),
status enum('complete', 'incomplete'),
userID_FK bigint not null,
eventID_FK bigint not null,
foreign key(userID_FK) references usuario(id),
foreign key(eventID_FK) references event(idEvent),
primary key(checkIn_ID)
);

























