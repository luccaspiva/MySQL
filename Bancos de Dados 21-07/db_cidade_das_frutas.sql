create database db_cidade_das_frutas; -- criando DB

use db_farmacia_do_bem; -- selecionando o DB

create table tb_categoria_fruta( -- criando tabela categoria
id bigint auto_increment,
categoria varchar(255) not null,
disponivel boolean,

primary key	(id)
);

-- inserindo dados na tabela
insert into tb_categoria_fruta(categoria, disponivel) values ("Futas", true);
insert into tb_categoria_fruta(categoria, disponivel) values ("Verduras", true);
insert into tb_categoria_fruta(categoria, disponivel) values ("Legumes", true);
insert into tb_categoria_fruta(categoria, disponivel) values ("Tubérculos", true);
insert into tb_categoria_fruta(categoria, disponivel) values ("Outros", true);

-- criando tabela produtos
create table tb_produto_fruta(
id bigint auto_increment,
produto varchar(255) not null,
preco decimal(5,2),
quantidade int,
categoria_id bigint,

primary key(id),
foreign key(categoria_id) references tb_categoria(id)
);

-- inserindo dados na tabela
insert into tb_produto_fruta(produto, preco, quantidade, categoria_id) values ("Maçã", 2.00, 100, 1);
insert into tb_produto_fruta(produto, preco, quantidade, categoria_id) values ("Carambola", 4.00, 60, 1);
insert into tb_produto_fruta(produto, preco, quantidade, categoria_id) values ("Alface", 1.00, 30, 2);
insert into tb_produto_fruta(produto, preco, quantidade, categoria_id) values ("Couve", 2.50, 25, 2);
insert into tb_produto_fruta(produto, preco, quantidade, categoria_id) values ("Cenoura", 5.00, 35, 3);
insert into tb_produto_fruta(produto, preco, quantidade, categoria_id) values ("Pimentão", 4.50, 35, 3);
insert into tb_produto_fruta(produto, preco, quantidade, categoria_id) values ("Batata", 3.50, 100, 4);
insert into tb_produto_fruta(produto, preco, quantidade, categoria_id) values ("Mandioca", 5.00, 35, 4);


-- selecionando itens
select * from tb_produto_fruta;

select	* from tb_produto_fruta where preco >= 2.00;

select * from tb_produto_fruta where preco between 3.00 and 5.00;

select * from tb_produto_fruta where produto like "%c%";

select tb_produto_fruta.produto, tb_produto_fruta.preco, tb_categoria_fruta.categoria from tb_produto_fruta 
inner join tb_categoria_fruta on tb_categoria_fruta.id = tb_produto_fruta.categoria_id; -- retorna os produtos com suas devidas categorias

select tb_produto_fruta.produto, tb_produto_fruta.preco, tb_categoria_fruta.categoria from tb_produto_fruta 
inner join tb_categoria_fruta on tb_categoria_fruta.id = tb_produto_fruta.categoria_id where tb_produto_fruta.categoria_id = 1; -- retorna as frutas


