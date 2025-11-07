create table Proprietario (
    CPFProp integer not null, 
    Nome text not null,
    Telefone text not null,
    Email text not null,
    primary key (CPFProp)
);

create table Imovel (
    CodImovel SERIAL not null,
    Rua text not null,
    Bairro text not null,
    Numero integer not null,
    Cidade text not null,
    Valor numeric(10,2),
    Status_ boolean not null,
    CPFProp integer not null, 
    primary key (CodImovel),
    foreign key (CPFProp) references Proprietario (CPFPropf)
    on update cascade on delete cascade
);

create table Inquilino (
    CPFInq integer not null,
    Nome text not null,
    DataNasc date not null,
    Telefone text not null,
    Email text not null,
    primary key (CPFInq)
);

create table Corretor (
    CPFCor integer not null,
    Nome text not null,
    Telefone text not null,
    Email text not null,
    CRECI text not null,
    primary key (CPFCor)
);

create table Aluguel (
    CodAluguel integer not null,
    DataInicio date not null,
    DataFim date not null,
    CodImovel integer not null,
    CPFInq integer not null,
    CPFCor integer not null,
    primary key (CodAluguel),
    foreign key (CodImovel) references Imovel (CodImovel)
    on update cascade on delete cascade,
    foreign key (CPFInq) references Inquilino (CPFInq)
    on update cascade on delete cascade,
    foreign key (CPFCor) references Corretor (CPFCor)
    on update cascade on delete cascade
);