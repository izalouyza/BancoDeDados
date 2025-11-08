create table departamento (
	id_dep serial primary key,
	nome_dep text not null,
	predio text not null,
	orcamento float not null
);


create table departamento (
	id_dep serial,
	nome_dep text not null,
	predio text not null,
	orcamento float not null,
	primary key (id_dep)
);