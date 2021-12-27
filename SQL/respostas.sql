#Respostas

#a) Encontre a MATRÍCULA(s) dos alunos com nota em BD12015-1menor que 90;
select matricula from tb_historico_academico where codigo_turma = 'BD12015-1' and nota < 90; 

#b) Encontre a MATRÍCULA(s) e calcule a média das notas dos alunos na disciplina de POO2015-1. 
select AVG(nota) from tb_historico_academico where codigo_turma = 'POO2015-1'; 

#c) Encontre o CODIGO do professor que ministra a turma WEB2015-1.
select codigo_professor from tb_turma where codigo_turma = "WEB2015-1"; 

#d) Gere o histórico completo do aluno 2015010106 mostrando MATRICULA,CODIGO DA TURMA, CODIGO DA DISCIPLINA, CODIGO PROFESSOR, FREQUENCIA,NOTA.
select a.matricula, a.codigo_turma,  b.codigo_disciplina, b.codigo_professor, a.frequencia, a.nota from tb_historico_academico AS a inner join tb_turma as b ON (a.codigo_turma = b.codigo_turma) and a.matricula = 2015010106;
