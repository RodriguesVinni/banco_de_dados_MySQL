create database db_escola;
use db_escola;

create table tb_alunos (
	id_aluno int PRIMARY KEY AUTO_INCREMENT,
    nome varchar(45), 
    nascimento date, 
    turma varchar(45),
    nota double(10, 2)
); 
insert into tb_alunos (nome, nascimento, turma, nota) values
	('Daniel','2000-02-03','A',8),
    ('João Victor','2001-07-09','B',7),
    ('Karina','2002-12-12','B',6),
    ('Geovana','2001-01-10','C',9.4),
    ('Fernando','1999-11-01','D',10);

select * from tb_alunos;

select * from tb_alunos where nota>7;
select * from tb_alunos where nota<7;

#delete from tb_alunos where id_aluno = 6; 

update tb_alunos set nota = 9 where id_aluno = 4 limit 1;