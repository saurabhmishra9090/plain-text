use MyDatabase
create table personos(
	id int not null,
	Person_name varchar(50) not null,
	DOB date,
	phone varchar(15),
	constraint pk_personos PRIMARY KEY(id)
	)

	select*
	from personos


	alter table personos 
	add email varchar(50) not null 

alter table personos
drop column email
 drop table personos