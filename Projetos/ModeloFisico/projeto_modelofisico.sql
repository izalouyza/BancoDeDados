create table proprietario (
    cpf_prop integer not null, 
    nome text not null,
    telefone text not null,
    email text not null,
    primary key (cpf_prop)
);

create table imovel (
    cod_imovel integer not null,
    rua text not null,
    bairro text not null,
    numero integer not null,
    cidade text not null,
    valor numeric(10,2),
    status boolean not null,
    cpf_prop integer not null, 
    primary key (cod_imovel),
    foreign key (cpf_prop) references proprietario (cpf_prop)
    on update cascade on delete cascade
);

create table inquilino (
    cpf_inq integer not null,
    nome text not null,
    data_nasc date not null,
    telefone text not null,
    email text not null,
    primary key (cpf_inq)
);

create table corretor (
    cpf_cor integer not null,
    nome text not null,
    telefone text not null,
    email text not null,
    creci text not null,
    primary key (cpf_cor)
);

create table aluguel (
    cod_aluguel integer not null,
    data_ini date not null,
    data_fim date not null,
    cod_imovel integer not null,
    cpf_inq integer not null,
    cpf_cor integer not null,
    primary key (cod_aluguel),
    foreign key (cod_imovel) references imovel (cod_imovel)
    on update cascade on delete cascade,
    foreign key (cpf_inq) references inquilino (cpf_inq)
    on update cascade on delete cascade,
    foreign key (cpf_cor) references corretor (cpf_cor)
    on update cascade on delete cascade
);