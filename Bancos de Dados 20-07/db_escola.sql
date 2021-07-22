/*Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as 
informações dos estudantes deste registro dessa escola. */

create database db_escola;

use db_escola;

/* Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 
5 atributos relevantes dos estudantes para se trabalhar com o serviço dessa escola.*/

create table tb_alunos(
id bigint auto_increment,
nome_aluno varchar(255) not null,
idade_aluno int not null,
periodo_aluno varchar(5) not null,
nota_aluno decimal (4,2) not null,

primary key(id)
);
  
  /*Popule esta tabela com até 8 dados;*/
  
insert into tb_alunos(nome_aluno, idade_aluno, periodo_aluno, nota_aluno) values ("João Paulo", 13, "Manhã", 9.75);
insert into tb_alunos(nome_aluno, idade_aluno, periodo_aluno, nota_aluno) values ("Ana Faria", 12, "Tarde", 8.50);
insert into tb_alunos(nome_aluno, idade_aluno, periodo_aluno, nota_aluno) values ("Natalia Bispo", 12, "Tarde", 4.75);
insert into tb_alunos(nome_aluno, idade_aluno, periodo_aluno, nota_aluno) values ("Lucas Paiva", 14, "Manhã", 2.00);
insert into tb_alunos(nome_aluno, idade_aluno, periodo_aluno, nota_aluno) values ("Matheus Nardes", 13, "Tarde", 10.00);
insert into tb_alunos(nome_aluno, idade_aluno, periodo_aluno, nota_aluno) values ("Guilherme Guirau", 13, "Manhã", 7.50);
insert into tb_alunos(nome_aluno, idade_aluno, periodo_aluno, nota_aluno) values ("Beatriz Paulino", 12, "Tarde", 5.00);
insert into tb_alunos(nome_aluno, idade_aluno, periodo_aluno, nota_aluno) values ("Larissa Rodrigues", 12, "Tarde", 8.50);

select * from tb_alunos;

-- Faça um select que retorne o/as estudantes  com a nota maior do que 7

select * from tb_alunos where nota_aluno >= 7.00;

-- Faça um select que retorne o/as estudantes  com a nota menor do que 7.

select * from tb_alunos where nota_aluno < 7.00;