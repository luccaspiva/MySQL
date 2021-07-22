/*Crie um banco de dados para um e commerce, onde o sistema trabalhará com as informações dos produtos deste ecommerce.*/
create database db_ecommerce;

use db_ecommerce;

/*Crie uma tabela produtos e utilizando a habilidade de abstração e determine 
5 atributos relevantes dos produtos para se trabalhar com o serviço deste ecommerce.*/
create table tb_produtos(
id_produto bigint auto_increment,
nome_produto varchar(255) not null,
quantidade int not null,
preco decimal (10,2) not null,
disponivel boolean,

primary key(id_produto)
);

 /*Popule esta tabela com até 8 dados;*/
insert into tb_produtos(nome_produto, quantidade, preco, disponivel) values ("Bolsa", 24, 458.00, true);
insert into tb_produtos(nome_produto, quantidade, preco, disponivel) values ("Sapato", 12, 120.00, true);
insert into tb_produtos(nome_produto, quantidade, preco, disponivel) values ("Calça", 22, 300.00, true);
insert into tb_produtos(nome_produto, quantidade, preco, disponivel) values ("Shorts", 0, 68.90, false);
insert into tb_produtos(nome_produto, quantidade, preco, disponivel) values ("Cinto", 35, 30.00, true);
insert into tb_produtos(nome_produto, quantidade, preco, disponivel) values ("Meia", 55, 10.00, true);
insert into tb_produtos(nome_produto, quantidade, preco, disponivel) values ("Pulseira", 12, 15.99, true);
insert into tb_produtos(nome_produto, quantidade, preco, disponivel) values ("Jaqueta", 6, 350.00, true);

select * from tb_produtos;

-- Faça um select que retorne os produtos com o valor maior do que 500.
select * from tb_produtos where preco > 500.00;

-- Faça um select que retorne os produtos com o valor menor do que 500.
select * from tb_produtos where preco < 500.00;
