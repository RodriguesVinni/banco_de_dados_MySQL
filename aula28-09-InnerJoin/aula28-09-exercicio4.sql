CREATE DATABASE `db_cidade_das_carnes`;
USE `db_cidade_das_carnes`;
drop DATABASE `db_cidade_das_carnes`;

CREATE TABLE IF NOT EXISTS `tb_categoria`(
	`id_categoria` int(11) NOT NULL AUTO_INCREMENT,
    `tipo_carne` varchar (255),
    `conservacao_carne` enum('Congelada', 'Fresca', 'Defumado'),
	PRIMARY KEY (`id_categoria`)
    );
    
CREATE TABLE IF NOT EXISTS `tb_produto`(
	`id_produto` int(11) NOT NULL AUTO_INCREMENT,
    `corte_carne` varchar (255),
    `peso_carne` double (6,2),
    `preco` double (6,2),
    `validade` date,
    `id_categoria` int,
	PRIMARY KEY (`id_produto`),
    constraint fk_categoria FOREIGN KEY (`id_categoria`) REFERENCES tb_categoria(`id_categoria`)
);
    insert into tb_categoria (`tipo_carne`, `conservacao_carne`) values
	('Ave','Congelada'),
    ('Bovino','Fresca'),
	('Suino','Defumado'),
	('Bovino','Fresca'),
	('Ave','Congelada');

    insert into tb_produto (`corte_carne`,`peso_carne`,`preco`,`validade`,`id_categoria`) values
	('Filé', '1.5', '12.50', '2020-10-10', 1),
    ('Moida', '2', '30.99', '2020-10-1', 2),
    ('Inteiro', '0.5', '55.50', '2020-10-1', 3),
    ('Cubos', '2.5', '70', '2020-10-1', 4),
    ('Fatias', '3', '15', '2020-10-1', 5);
    
        
    select * from tb_produto where `preco` > 50;
    
    select * from tb_produto where `preco` > 3 and `preco` < 60;
    
    select * from tb_produto where `corte_carne` like 'c%';
    
    select * from tb_categoria
    inner join tb_produto
    where tb_categoria.id_categoria= tb_produto.id_categoria;
    
    select * from tb_categoria where `tipo_carne` like 'Bovino';