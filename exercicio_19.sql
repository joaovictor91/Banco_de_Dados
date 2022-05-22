#a)
select v.nome, v.idade
from vendedor v;

#b) do meu jeito
select v.codigo, v.salario
from vendedor v, pedido p
where p.codigo_ven=v.codigo;

#b) do professor
select v.codigo, v.salario, p.numero
from vendedor v, pedido p
where p.codigo_ven=v.codigo;
#b2)
select codigo, salario
from vendedor
where codigo not in (select codigo_ven from pedido);


#c) o que eu fiz também mais ou menso certo
select p.numero "Número do Pedido", v.nome "Nome do Vendedor"
from pedido p, vendedor v, cliente c
where p.codigo_cli=11 and c.tipo = "Industria" and # o erro está no código do cliente
        p.codigo_ven=v.codigo;


#c) o que está certo
select p.numero "Número do Pedido", v.nome "Nome do Vendedor"
from pedido p, vendedor v, cliente c
where c.tipo = "Industria" and
		p.codigo_ven=v.codigo and
        p.codigo_cli = c.codigo;
        
#d) Junção feita no where
select p.quantidade "Quantidade de Pedido", 
v.idade "Idade do Vendedor", c.tipo "Tipo do Cliente" #projeção
from pedido p, vendedor v, cliente c
where v.nome = "Joao" and
		v.codigo=p.codigo_ven and
        p.codigo_cli = c.codigo; #seleção
 #d2) Junção feita no from
select p.quantidade "Quantidade de Pedido", 
v.idade "Idade do Vendedor", c.tipo "Tipo do Cliente" #projeção
from pedido p inner join cliente c on  p.codigo_cli=c.codigo
	inner join vendedor v on p.codigo_ven=v.codigo
where v.nome="Joao";
 #d3)Uso do Left ou Right Join
select *
from cliente c left join pedido p on p.codigo_cli=c.codigo;
#outra forma
select *
from pedido p  right join cliente c on p.codigo_cli=c.codigo;
#e)
select distinct c.cidade "Nome da Cidade"
from cliente c;
# outra forma
#e2)
select cidade
from cliente
group by cidade;

#f)
select  max(v.idade) "O Vendedor mais velho"
from vendedor v;
#f)
select  max(v.idade) MaisVelho
from vendedor v;

#g)
select  avg(v.salario) "A média dos salarios dos Vendedores"
from vendedor v;
#g)
select  avg(v.salario) MediaSalario
from vendedor v;

#h) o que eu realizei
select  v.nome"Nome do Vendedor",count(p.codigo_ven) "Quantidade de Vendas"
from vendedor v, pedido p
where p.codigo_ven=v.codigo
GROUP BY v.nome
HAVING   COUNT(p.codigo_ven) >= 1
ORDER BY COUNT(v.nome) DESC;
#h) aula que o professor realizou
select codigo_ven, count(*) QtdPedidos
from pedido
group by codigo_ven;

