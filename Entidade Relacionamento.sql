create database db_chaves1;
use db_chaves1;

CREATE TABLE Pessoas (
	ID_Pessoa int PRIMARY KEY AUTO_INCREMENT,
    Nome varchar(255));
    
CREATE TABLE Carro(
	ID_Carro integer PRIMARY KEY AUTO_INCREMENT,
    Nome varchar(255),
    Marca varchar(255),
    ID_Pessoa int,
    CONSTRAINT fk_Pessoas FOREIGN KEY (ID_Pessoa) REFERENCES Pessoas (ID_Pessoa));
  # modelar   nomeChave   chaveEstrangeira        relaciona com id pessoa da tabela pessoas

insert into Pessoas (Nome) values ('Juliana'),    ('Julio'),    ('Márcio'); 

insert into Carro (Nome, Marca, ID_Pessoa) values   
			('Gol', 'Wolks',2),    ('Palio', 'Fiat', 3);

  SELECT * FROM Carro;
  truncate Pessoas;
