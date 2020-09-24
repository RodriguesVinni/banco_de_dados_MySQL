create database db_empresaRH;
use db_empresaRH;

create table if not exists tb_funcionarios(
	id_funcionario int PRIMARY KEY AUTO_INCREMENT,
    nome varchar(30),
    nascimento date,
    cargo varchar(30),
    salario double(10, 2)
);

insert into tb_funcionarios (nome, nascimento, cargo, salario) values
	('Mariana', '1997-10-20', 'Arquiteta', 6000.00),
    ('Aline', '1997-08-28', 'Desenvolvedora', 4500.00),
	('Luiz', '1999-04-15', 'Radiologista', 1800.00),
	('Lais', '1996-09-22', 'Contadora', 2000.00),
	('Kayque', '2000-07-07', 'Gerente', 10000.00);


select * from tb_funcionarios;

select * from tb_funcionarios where salario > 2000.00;
select * from tb_funcionarios where salario < 2000.00;
