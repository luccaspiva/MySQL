create database db_cursoDaMinhaVida; -- criando DB

use db_cursoDaMinhaVida; -- selecionando o DB

create table tb_categoria( -- criando tabela categoria
id bigint auto_increment,
categoria varchar(255) not null,
disponivel boolean,

primary key	(id)
);

-- inserindo dados na tabela
insert into tb_categoria(categoria, disponivel) values ("Java", true);
insert into tb_categoria(categoria, disponivel) values ("SQL", true);
insert into tb_categoria(categoria, disponivel) values ("CSS", true);
insert into tb_categoria(categoria, disponivel) values ("HTML", true);
insert into tb_categoria(categoria, disponivel) values ("JavaScript", true);

-- criando tabela produtos
create table tb_produto(
id bigint auto_increment,
curso varchar(255) not null,
preco decimal(5,2),
alunos int,
categoria_id bigint,

primary key(id),
foreign key(categoria_id) references tb_categoria(id)
);

-- inserindo dados na tabela
insert into tb_produto(curso, preco, alunos, categoria_id) values ("Introdução Back-End", 50.00, 20, 1);
insert into tb_produto(curso, preco, alunos, categoria_id) values ("Desenvolvimento Back-End", 60.00, 20, 1);
insert into tb_produto(curso, preco, alunos, categoria_id) values ("Introdução à Banco de Dados", 30.00, 20, 2);
insert into tb_produto(curso, preco, alunos, categoria_id) values ("Banco de Dados", 80.00, 20, 2);
insert into tb_produto(curso, preco, alunos, categoria_id) values ("Desenvolvimento Front-End 1", 35.00, 20, 3);
insert into tb_produto(curso, preco, alunos, categoria_id) values ("Desenvolvimento Front-End 2", 60.00, 20, 4);
insert into tb_produto(curso, preco, alunos, categoria_id) values ("Desenvolvimento Front-End 3", 80.00, 20, 5);

-- selecionando itens
select * from tb_produto;

select	* from tb_produto where preco >= 50.00;

select * from tb_produto where preco between 30.00 and 60.00;

select * from tb_produto where curso like "%b%";

select tb_produto.curso, tb_produto.preco, tb_categoria.categoria from tb_produto 
inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id; -- retorna os produtos com suas devidas categorias

select tb_produto.curso, tb_produto.preco, tb_categoria.categoria from tb_produto 
inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_produto.categoria_id = 1; -- retorna os cursos com Java


