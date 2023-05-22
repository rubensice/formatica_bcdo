use ok;


insert into usuario (firstName, lastName, cpf, gender, email, birth, password)
values ('Matheus', 'araujo', '111.111.111-22', 'm', 'matheusnbinario@gmail.com', '2000-11-12 00:00:00', 'senha123');


insert into usuario_occupation (occupation, startDate, usuario_FK, access_FK)
values ('Secretário', '2023-05-01 00:00:00', 1, 1);


insert into access_level (nome)
values ('Admin');

update access_level
set nome = 'admin'
where id = 1;

select * from usuario;
select * from usuario_occupation;
select * from access_level;

Select US.firstName, UO.occupation, AC.nome as 'access'
from usuario_occupation UO
join usuario US
ON UO.usuario_FK = US.id
join access_level AC
ON UO.access_FK = AC.id;






insert into usuario_occupation (occupation, startDate, usuario_FK, access_FK)
values ('Secretário', '2023-05-01 00:00:00', 1, 1);

