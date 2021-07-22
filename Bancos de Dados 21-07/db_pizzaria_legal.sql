/*Crie um banco de dados para um serviço de pizzaria de uma empresa, o nome do banco deverá ter o 
seguinte nome db_pizzaria_legal, onde o sistema trabalhará com as informações dos produtos desta empresa. 

O sistema trabalhará com 2 tabelas tb_pizza e tb_categoria.*/

create database db_pizzaria_legal;

use db_pizzaria_legal; -- inicializando o DB

/*Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos 
relevantes do tb_categoria para se trabalhar com o serviço dessa pizzaria.*/

create table tb_categoria(
id bigint auto_increment,
tipo varchar(255),
tamanho varchar(1),

primary key (id)
);

-- Popule esta tabela Categoria com até 5 dados.

insert into tb_categoria(tipo, tamanho) values ("Salgada", "P");
insert into tb_categoria(tipo, tamanho) values ("Salgada", "M");
insert into tb_categoria(tipo, tamanho) values ("Salgada", "G");
insert into tb_categoria(tipo, tamanho) values ("Doce", "P");
insert into tb_categoria(tipo, tamanho) values ("Doce", "M");

/*Crie uma tabela de tb_pizza e utilizando a habilidade de abstração e determine 5 atributos relevantes 
dos tb_produto para se trabalhar com o serviço dessa pizzaria*/

create table tb_pizza(
id bigint auto_increment,
nome varchar(255),
valor decimal (5,2),
acompanhamento boolean,
categoria_id bigint,

primary key(id),
foreign key (categoria_id) references tb_categoria(id)
);

-- Popule esta tabela pizza com até 8 dados.

insert into tb_pizza(nome, valor, acompanhamento, categoria_id) values ("Queijo", 18.00, false, 1);
insert into tb_pizza(nome, valor, acompanhamento, categoria_id) values ("Calabresa", 29.00, false, 2);
insert into tb_pizza(nome, valor, acompanhamento, categoria_id) values ("Frango", 32.00, false, 2);
insert into tb_pizza(nome, valor, acompanhamento, categoria_id) values ("Palmito com Queijo", 55.00, false, 3);
insert into tb_pizza(nome, valor, acompanhamento, categoria_id) values ("Frango com Queijo", 57.00, false, 3);
insert into tb_pizza(nome, valor, acompanhamento, categoria_id) values ("Chocolate", 25.00, false, 4);
insert into tb_pizza(nome, valor, acompanhamento, categoria_id) values ("Banana", 25.00, false, 4);
insert into tb_pizza(nome, valor, acompanhamento, categoria_id) values ("Chocolate com Morango", 35.00, false, 5);

select * from tb_pizza;

-- Faça um select que retorne os Produtos com o valor maior do que 45 reais
select * from tb_pizza where valor > 45.00;

-- Faça um select trazendo  os Produtos com valor entre 29 e 60 reais.
select * from tb_pizza where valor between 29.00 and 60.00;

-- Faça um select  utilizando LIKE buscando os Produtos com a letra C.
select * from tb_pizza where nome like "%c%";

-- Faça um um select com Inner join entre  tabela categoria e pizza.
select tb_pizza.nome, tb_pizza.valor, tb_categoria.tipo from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;

-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são pizza doce).
select tb_pizza.nome, tb_pizza.valor, tb_categoria.tipo , tb_categoria.tamanho from tb_pizza 
inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id where tb_categoria.tipo = "Salgada";

select tb_pizza.nome, tb_pizza.valor, tb_categoria.tipo, tb_categoria.tamanho from tb_pizza 
inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id where tb_categoria.tamanho = "M";














