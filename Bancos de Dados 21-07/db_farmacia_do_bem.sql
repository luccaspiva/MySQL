create database db_farmacia_do_bem; -- criando DB

use db_farmacia_do_bem; -- selecionando o DB

create table tb_categoria( -- criando tabela categoria
id bigint auto_increment,
categoria varchar(255) not null,
disponivel boolean,

primary key	(id)
);

-- inserindo dados na tabela
insert into tb_categoria(categoria, disponivel) values ("Cosmético", true);
insert into tb_categoria(categoria, disponivel) values ("Medicamento", true);
insert into tb_categoria(categoria, disponivel) values ("Higiene Pessoal", true);
insert into tb_categoria(categoria, disponivel) values ("Conveniência", true);
insert into tb_categoria(categoria, disponivel) values ("Outros", true);

-- criando tabela produtos
create table tb_produto(
id bigint auto_increment,
produto varchar(255) not null,
preco decimal(5,2),
quantidade int,
categoria_id bigint,

primary key(id),
foreign key(categoria_id) references tb_categoria(id)
);

-- inserindo dados na tabela
insert into tb_produto(produto, preco, quantidade, categoria_id) values ("Shampoo", 30.00, 15, 1);
insert into tb_produto(produto, preco, quantidade, categoria_id) values ("Base", 50.00, 30, 1);
insert into tb_produto(produto, preco, quantidade, categoria_id) values ("Dipirona", 10.00, 50, 2);
insert into tb_produto(produto, preco, quantidade, categoria_id) values ("Cataflan", 20.00, 35, 2);
insert into tb_produto(produto, preco, quantidade, categoria_id) values ("Enxaguante Bucal", 25.00, 15, 3);
insert into tb_produto(produto, preco, quantidade, categoria_id) values ("Creme Dental", 3.00, 30, 3);
insert into tb_produto(produto, preco, quantidade, categoria_id) values ("Chiclete", 2.00, 15, 4);
insert into tb_produto(produto, preco, quantidade, categoria_id) values ("Água Bucal", 3.00, 15, 4);


-- selecionando itens
select * from tb_produto;

update tb_produto set produto= "Água" where id = 8;

select * from tb_produto;

select	* from tb_produto where preco >= 50.00;

select * from tb_produto where preco between 3.00 and 60.00;

select * from tb_produto where produto like "%b%";

select tb_produto.produto, tb_produto.preco, tb_categoria.categoria from tb_produto 
inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id; -- retorna os produtos com suas devidas categorias

select tb_produto.produto, tb_produto.preco, tb_categoria.categoria from tb_produto 
inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_produto.categoria_id = 1; -- retorna os cosméticos


