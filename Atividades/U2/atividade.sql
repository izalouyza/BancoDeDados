create table cliente (
	id_cli serial primary key,
	nome text not null,
	cpf text not null,
	num_conta int not null,
	telefone text not null,
	cidade text not null
);

create table carro (
	id_car serial primary key,
	chassi text not null,
	modelo text not null,
	cor text not null,
	ano int not null,
	preco float not null
);

create table aluguel (
	id_alu serial primary key,
	id_cli int not null,
	id_car int not null,
	data_ent date not null,
	data_sai date not null,
	total float not null
);

alter table cliente 
add agencia int,
add rua text,
add numero int,
add bairro text,
add estado text;

alter table cliente
rename num_conta to conta;

alter table aluguel
add foreign key (id_cli) references cliente (id_cli)
on update cascade on delete cascade,
add foreign key (id_car) references carro (id_car)
on update cascade on delete cascade;

alter table cliente
drop conta,
drop agencia;

alter table carro
rename preco to valor;

alter table carro
alter column valor set default 0;
