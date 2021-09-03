-- Comentário
-- A linha abaixo cria um banco de dados
create database dbinfox;
-- a linha abaixo escolhe o banco de dados a ser utilizado
use dbinfox; 
-- o bloco de instruções abaixo cria uma tabela
create table tbusuarios(
iduser int primary key,
usuario varchar(50) not null,
fone varchar(15),
login varchar(15) not null unique,
senha varchar(15) not null
);
-- Comando que vai descrever a tabela 
describe tbusuarios;
-- A linha abaixo insere dados na tabela (CRUD)
-- Create -> insert
insert into tbusuarios(iduser, usuario, fone, login, senha)
values (1, 'José de Assis', '9999-9999','joseassis','123456');
-- A linha abaixo exibe os dados da tabela (CRUD)
-- Read -> select
Select * from tbusuarios;

insert into tbusuarios(iduser, usuario, fone, login, senha)
values (2, 'Administrador', '9999-9999','admin','admin');
insert into tbusuarios(iduser, usuario, fone, login, senha,perfil)
values (3, 'Uehara Daizo', '5555-5555','daizo','123457');


-- A linha abaixo modifica dados na tabela (CRUD)
-- Update -> update
update tbusuarios set fone='0000-0000' where iduser=2;

-- a linha abaixo apaga um registro da tabela (CRUD)
-- delete -> delete
delete from tbusuarios where iduser=3;
Select * from tbusuarios;

create table tbclientes(
	idcli int primary key auto_increment,
    nomecli varchar(50) not null,
    endcli varchar(100),
    fonecli varchar(50) not null,
    emailcli varchar(50) not null
);

describe tbclientes;
Select * from tbclientes;

insert into tbclientes(nomecli, endcli,fonecli,emailcli)
values('Linus Torvalds', 'Rua Tux, 2016','9999-9999','linus@linux.com');

Select * from tbclientes;
use dbinfox;

create table tbos(
	os int primary key auto_increment,
    data_os timestamp default current_timestamp,
    equipamento varchar(150) not null,
    defeito varchar(150) not null, 
    servico varchar(150),
    tecnico varchar(30),
    valor decimal (10,2),
    idcli int not null,
    foreign key(idcli) references tbclientes(idcli)
);

insert into tbos(equipamento,defeito, servico, tecnico, valor, idcli)
values ('Notebook', 'Não Liga', 'Troca de fonte','Zé',87.50,1);

Select * from tbos;

-- o código abaixo traz informações de duas tabelas

select
O.os,equipamento,defeito,servico,valor,
C.nomecli,fonecli
from tbos as O
inner join tbclientes as C
on (O.idcli = C.idcli);

use dbinfox;
describe tbusuarios; 
select * from tbusuarios;


-- Continuação

-- a linha abaixo adiciona um campo a tabela
alter table tbusuarios add column perfil varchar(20) not null;

-- a linha baixo remove um campo de uma tabela
alter table tbusuario drop column perfil;

update tbusuarios set perfil='admin' where iduser=2;
update tbusuarios set perfil='admin' where iduser=1;
insert into tbusuarios(iduser, usuario, fone, login, senha,perfil)
values (3, 'Uehara Daizo', '5555-5555','daizo','123457','user');

describe tbclientes;
SELECT * FROM tbclientes;
-- As linhas abaixo personaliza os títulos das colunas. 
SELECT idcli AS ID, nomecli AS Nome, endcli AS Endereço, fonecli AS Telefone,
emailcli AS Email from tbclientes;  

describe tbos;

use dbinfox;
select * from tbclientes;
select dicli,nomecli,fonecli from tbclientes where nomecli like 'jo%';
-- A linha abaixo cria um apelido aos campos da tabela
select idcli as ID, nomecli as Nome, fonecli AS Telefone from tbclientes;

USE dbinfox;
DESCRIBE tbos;
-- a linha abaixo altera a tabela adicionando um campo em uma determinada posição
ALTER TABLE tbos ADD tipo VARCHAR(15) NOT NULL AFTER data_os;
ALTER TABLE tbos ADD situacao VARCHAR(20) NOT NULL AFTER tipo;
SELECT * FROM tbos; 



