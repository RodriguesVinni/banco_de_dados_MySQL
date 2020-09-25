create database db_generation_game_online;
use db_generation_game_online;

create table tb_personagem (
	id_personagem int not null auto_increment,
    nome varchar (30),
    nacionalidade varchar(30),
    funcao varchar (30),
    poder_ataque int (10),
    poder_defesa int (10),
    PRIMARY KEY (id_personagem));
    
    create table tb_classe (
    id_classe int not null auto_increment,
    rank varchar (30),
    nivel int,
    tipo varchar(30),
    id_personagem int,
    PRIMARY KEY (id_classe),
     constraint fk_personagem FOREIGN KEY (id_personagem) REFERENCES tb_personagem(id_personagem)
    );
    
    insert into tb_personagem (nome, nacionalidade, funcao, poder_ataque, poder_defesa) values
	('Pikachu', 'Russia', 'Proteção', 3000, 5000),
    ('Scuard', 'Australia', 'Pesca', 2500, 1500),
	('Charmander', 'China', 'Batalha', 6000, 6000),
	('chikorita', 'Brasil', 'Cultivo', 1800, 2000),
	('Pidgeot', 'EUA', 'Vigilancia', 1900, 3000);
    
    insert into tb_classe (rank, nivel, tipo) values
	('Great', '50', 'Eletrico'),
    ('Master', '61', 'Aquatico'),
    ('Epic', '48', 'Fogo'),
    ('Iniciante', '19', 'Planta'),
    ('Great', '70', 'Ar');
    
    select * from tb_personagem;
	select * from tb_classe;
    
    select * from tb_personagem where poder_ataque > 2000;
    
	select * from tb_personagem where poder_defesa > 1000 and poder_defesa < 4000;
    
	select * from tb_personagem where nome like 'c%';
    
    
