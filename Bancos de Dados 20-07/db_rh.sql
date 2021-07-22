/*Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema 
trabalhará com as informações dos funcionaries desta empresa.*/
create database db_rh;

use db_rh; -- Iniciando o BD criado

/*Crie uma tabela de funcionaries e utilizando a habilidade de abstração e determine 
5 atributos relevantes dos funcionaries para se trabalhar com o serviço deste RH.*/
create table tb_funcionaries(
id bigint auto_increment,
nome varchar(255) not null,
idade int,
salario decimal (10,2),
departamento varchar (255) not null,

primary key(id)
);

/*Popule esta tabela com até 6 dados;*/
insert into tb_funcionaries(nome, idade, salario, departamento) values ("Lucas Dias", 24, 2200.00, "Rh");
insert into tb_funcionaries(nome, idade, salario, departamento) values ("Maria Madalena", 22, 2500.00, "Rh");
insert into tb_funcionaries(nome, idade, salario, departamento) values ("João Carlos", 26, 3200.05, "Desenvolvimento");
insert into tb_funcionaries(nome, idade, salario, departamento) values ("Alice Souza", 32, 4400.00, "Financeiro");
insert into tb_funcionaries(nome, idade, salario, departamento) values ("Mauro Filho", 48, 5200.80, "Desenvolvimento");
insert into tb_funcionaries(nome, idade, salario, departamento) values ("Mauro Filho", 48, 900.80, "Desenvolvimento");
 
 -- Alterando os dados da ultima inserção
update  tb_funcionaries set nome = "Suzana da Silva", idade = 21 where id = 6;

select * from tb_funcionaries;

/*Faça um select que retorne os funcionaries com o salário maior do que 2000*/
select * from tb_funcionaries where salario > 2000.00;

/*Faça um select que retorne os funcionaries com o salário menor do que 2000.*/
select * from tb_funcionaries where salario < 2000.00;
