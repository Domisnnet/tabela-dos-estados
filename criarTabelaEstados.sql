-- Criando a tabela estados
create table estados (
    id int unsigned not null auto_increment,
    nome varchar(45) not null,
    sigla varchar(2) not null,
    regiao ENUM('Norte', 'Nordeste', 'Sul', 'Sudeste', 'Centro-Oeste') not null,
    populacao DECIMAL(5, 2) not null, -- População em milhões
    PRIMARY KEY (id),
    UNIQUE KEY (sigla),
    UNIQUE  KEY (nome)
);