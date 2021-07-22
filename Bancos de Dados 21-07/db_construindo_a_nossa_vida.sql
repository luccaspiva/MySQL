create database db_construindo_a_nossa_vida; -- criando DB

use db_construindo_a_nossa_vida; -- selecionando o DB

create table tb_categoria_construcao( -- criando tabela categoria
id bigint auto_increment,
categoria varchar(255) not null,
disponivel boolean,

primary key	(id)
);

-- inserindo dados na tabela
insert into tb_categoria_construcao(categoria, disponivel) values ("Hidfráulica", true);
insert into tb_categoria_construcao(categoria, disponivel) values ("Elétrica", true);
insert into tb_categoria_construcao(categoria, disponivel) values ("Material", true);
insert into tb_categoria_construcao(categoria, disponivel) values ("Equipamentos", true);
insert into tb_categoria_construcao(categoria, disponivel) values ("Outros", true);

-- criando tabela produtos
create table tb_produto_construcao(
id bigint auto_increment,
produto varchar(255) not null,
preco decimal(5,2),
quantidade int,
categoria_id bigint,

primary key(id),
foreign key(categoria_id) references tb_categoria_construcao(id)
);

-- inserindo dados na tabela
insert into tb_produto_construcao(produto, preco, quantidade, categoria_id) values ("Cano PVC", 10.00, 15, 1);
insert into tb_produto_construcao(produto, preco, quantidade, categoria_id) values ("Bomba Hidráulica", 250.00, 30, 1);
insert into tb_produto_construcao(produto, preco, quantidade, categoria_id) values ("Interruptor", 1.50, 50, 2);
insert into tb_produto_construcao(produto, preco, quantidade, categoria_id) values ("Conduíte", 10.00, 35, 2);
insert into tb_produto_construcao(produto, preco, quantidade, categoria_id) values ("Cimento", 10.00, 15, 3);
insert into tb_produto_construcao(produto, preco, quantidade, categoria_id) values ("Tijolo", 10.00, 30, 3);
insert into tb_produto_construcao(produto, preco, quantidade, categoria_id) values ("Enxada", 30.00, 15, 5);
insert into tb_produto_construcao(produto, preco, quantidade, categoria_id) values ("Pá", 45.00, 15, 5);

-- selecionando itens
select * from tb_produto_construcao;

select	* from tb_produto_construcao where preco >= 50.00;

select * from tb_produto_construcao where preco between 3.00 and 60.00;

select * from tb_produto_construcao where produto like "%c%";

select tb_produto_construcao.produto, tb_produto_construcao.preco, tb_categoria_construcao.categoria from tb_produto_construcao 
inner join tb_categoria_construcao on tb_categoria_construcao.id = tb_produto_construcao.categoria_id; -- retorna os produtos com suas devidas categorias

select tb_produto_construcao.produto, tb_produto_construcao.preco, tb_categoria_construcao.categoria from tb_produto_construcao 
inner join tb_categoria_construcao on tb_categoria_construcao.id = tb_produto_construcao.categoria_id where tb_produto_construcao.categoria_id = 1; -- retorna os hidráulicos


