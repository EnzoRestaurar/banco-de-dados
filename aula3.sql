SHOW DATABASES;

use alunos;

--LISTA TODOS OS DADOS DA TABELA ALUNO 
select * from aluno;

insert into aluno(idAluno, nomeAluno) 
  values (123, 'joaozinho');   

insert into aluno(idAluno, nomeAluno) 
  values (456, 'mariazinha');   

insert into aluno(idAluno, nomeAluno) 
  values (789, 'juquinha'); 


create table lancamento (
    idLancamento int(11) 
    primary key not null, 
   materia varchar(40) not null, 
   nota1 float(20) not null,
   nota2 float(20) not null,
   nota3 float(20) not null,
   nota4 float(20) not null,
   total float(20) not null,
   situacao boolean not null,
   idAluno int(11) not null,
   foreign key (idAluno)
     references aluno (idAluno)
);
  

insert into lancamento(idLancamento, materia, nota1, nota2, nota3, nota4, total, situacao, idAluno) 
  values (10, 'matematica', 50.5, 60.5, 70.5, 80.5, 262, true, 123);

insert into lancamento(idLancamento, materia, nota1, nota2, nota3, nota4, total, situacao, idAluno) 
  values (20, 'matematica', 70.5, 80.5, 50.5, 60.5, 262, true, 456);
  
  insert into lancamento(idLancamento, materia, nota1, nota2, nota3, nota4, total, situacao, idAluno) 
  values (30, 'matematica', 60.5, 60.5, 60.5, 60.5, 242, true, 789);

insert into lancamento(idLancamento, materia, nota1, nota2, nota3, nota4, total, situacao, idAluno)
  values (11, 'portugues' , 20.5, 75.5, 30.5, 90.5, 217, true, 123);

  insert into lancamento(idLancamento, materia, nota1, nota2, nota3, nota4, total, situacao, idAluno) 
  values (21, 'portugues', 90.5, 60.5, 60.5, 40.5, 252, true, 456);
  
  insert into lancamento(idLancamento, materia, nota1, nota2, nota3, nota4, total, situacao, idAluno) 
  values (31, 'portugues', 60.5, 75.5, 80.5, 70.5, 287, true, 789);

insert into lancamento(idLancamento, materia, nota1, nota2, nota3, nota4, total, situacao, idAluno) 
  values (12, 'filosofia', 80.5, 90.5, 75.5, 95.5, 342, true, 123);

insert into lancamento(idLancamento, materia, nota1, nota2, nota3, nota4, total, situacao, idAluno) 
  values (22, 'filosofia', 50.5, 40.5, 30.5, 90.5, 212, true, 456);
  
  insert into lancamento(idLancamento, materia, nota1, nota2, nota3, nota4, total, situacao, idAluno) 
  values (32, 'filosofia', 20.5, 30.5, 50.5, 80.5, 182, false, 789);

  select *, if(situacao, 'aprovado','reprovado') as coluna from lancamento where idAluno = 789;