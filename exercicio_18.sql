#a)
select nome, idade #projeção
from aluno;
#b)
select codigo, nome, idade #projeção
from aluno
where idade>18; #seleção
#c)
select nome, codigo_cur #projeção
from aluno, matricula 
where codigo_cur=1 and 
		codigo = codigo_alu; #seleção e junção
#d)
select c.nome, horario #projeção
from  curso c, matricula m , aluno a
where c.codigo = m.codigo_cur and 
	m.codigo_alu = a.codigo and
		a.nome= "Pedro Costa"; #junção e seleção
        
#e)
select a.nome "Nome do Aluno", m.codigo_cur "Código do Curso"
from matricula m, aluno a
where m.codigo_alu=a.codigo and
	(m.codigo_cur = 2 or m.codigo_cur = 3);
