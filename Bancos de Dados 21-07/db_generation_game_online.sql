/*Crie um banco de dados para um serviço de um game Online , o nome do banco deverá ter o seguinte 
nome db_generation_game_online, onde, o sistema trabalhará com as informações dos personagens desse game. 

O sistema trabalhará com 2 tabelas tb_personagem e tb_classe. */

create database db_generation_game_online;

use db_generation_game_online;


/*Crie uma tabela tb_classe utilizando a habilidade de abstração e determine 3 atributos relevantes 
da classe para se trabalhar com o serviço desse  game Online*/

create table tb_classe(
id bigint auto_increment,
descricao varchar(255),
ativo boolean,

primary key(id)
);

/* Popule esta tabela classe com até 5 dados. */

insert into tb_classe(descricao, ativo) values ("Tanque", true);
insert into tb_classe(descricao, ativo) values ("Mago", true);
insert into tb_classe(descricao, ativo) values ("Suporte", true);
insert into tb_classe(descricao, ativo) values ("Atirador", true);
insert into tb_classe(descricao, ativo) values ("Assassino", true);

select * from tb_classe;

/* Crie uma tabela tb_personagem  e utilizando a habilidade de abstração e determine 5 atributos 
relevantes dos funcionários para se trabalhar com o serviço desse game Online */

create table tb_personagem(
id bigint auto_increment,
nome varchar(255) not null,
ataque int,
defesa int,
categoria_id bigint,

primary key (id),
foreign key (categoria_id) references tb_classe (id)
);

/* Popule esta tabela personagem com até 9 dados. */

insert into tb_personagem(nome, ataque, defesa, categoria_id) values ("Garen", 100, 90, 1);
insert into tb_personagem(nome, ataque, defesa, categoria_id) values ("Ahri", 80, 50, 2);
insert into tb_personagem(nome, ataque, defesa, categoria_id) values ("Lux", 60, 30, 3);
insert into tb_personagem(nome, ataque, defesa, categoria_id) values ("Ashe", 70, 50, 4);
insert into tb_personagem(nome, ataque, defesa, categoria_id) values ("Master Yi", 90, 40, 5);
insert into tb_personagem(nome, ataque, defesa, categoria_id) values ("Blitz", 100, 90, 1);
insert into tb_personagem(nome, ataque, defesa, categoria_id) values ("Lulu", 80, 50, 2);
insert into tb_personagem(nome, ataque, defesa, categoria_id) values ("Sona", 60, 30, 3);
insert into tb_personagem(nome, ataque, defesa, categoria_id) values ("Ezreal", 70, 40, 4);

/*Faça um select que retorne os personagens com o poder de ataque maior do que 70.*/

select * from tb_personagem where ataque >= 70;

/*Faça um select trazendo  os personagens com poder de defesa entre 80 e 100.*/

select * from tb_personagem where ataque between 80 and 100;

/* Faça um select  utilizando LIKE buscando os personagens com a letra A */

select * from tb_personagem where nome like "A%";

/* Faça um um select com Inner join entre  tabela classe e personagem */

select  tb_personagem.nome, tb_classe.descricao from tb_personagem inner join tb_classe 
on tb_classe.id = tb_personagem.categoria_id;

/* Faça um select onde traga todos os personagem de uma classe específica */

select  tb_personagem.nome, tb_classe.descricao from tb_personagem inner join tb_classe 
on tb_classe.id = tb_personagem.categoria_id and tb_classe.descricao = "Suporte";








