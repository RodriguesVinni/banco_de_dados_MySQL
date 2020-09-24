create database db_ecommerce;
use db_ecommerce;

create table if not exists tb_produto(
	id_produto int PRIMARY KEY AUTO_INCREMENT,
    produto varchar(55),
    categoria varchar(30),
    cor varchar(15),
    tamanho int,
    genero char (1),
    valor double (10,2),
    quantidade int
);
insert into tb_produto (produto, categoria, cor, tamanho, genero, valor, quantidade) values
	('NikeRevolutionVI', 'Tenis','Preto', 39, 'M',	249.49, 1),
    ('AdidasFluidFlow', 'Tenis','Cinza', 37, 'F', 189.99, 1),
	('MizunoSpace','Tenis', 'Azul', 39, 'F', 149.99, 1),
	('HavaianasAtena','Chinelo', 'Rosa', 38, 'F', 22.99, 2),
	('AdidasAdissage','Chinelo', 'Preto', 41, 'M', 159.99, 1),
    ('ChineloColcciSlideBianca', 'Chinelo', 'Bege', 35, 'F', 109.99, 1),
    ('CampoMizunoMoreliaJapanMDII', 'Chuteira', 'Preta', 42, 'M', 1499.99, 1),
    ('CampoUmbroUXAccuroPróHG', 'Chuteira ', 'Roxa', 40, 'F', 729.91, 1);
    
select * from tb_produto;

select * from tb_produto where valor > 500.00;
select * from tb_produto where valor < 500.00;

update tb_produto set valor = 700.00 where id_produto = 8 limit 1;
