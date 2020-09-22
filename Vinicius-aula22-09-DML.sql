create database db_deletar;
use db_deletar;

#drop table consumidores;
create table if not exists consumidores (
	id int PRIMARY KEY AUTO_INCREMENT,
    nome varchar(30)
    
    );
    
    insert into consumidores (nome) values
    ("Marcelo"), ("Julia");
    
select * from consumidores;
delete from consumidores where id = 1;
select * from consumidores;
#truncate consumidores;--> serve para limpar os somente os dados da tabela e mantendo sua estrutura 
