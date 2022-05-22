#a)
select v.nome "Nome do Vendedor", v.salario "Salário"
from vendedor v
where v.salario >=3000
order by v.salario desc;

#b)
select p.numero, c.cidade, p.quantidade
from cliente c, pedido p
where p.codigo_cli=c.codigo and p.numero<=300
order by p.numero;
#com limit
select p.numero, c.cidade, p.quantidade
from cliente c, pedido p
where p.codigo_cli=c.codigo
order by p.numero
limit 3;

#c)
select p.codigo_ven, avg(p.quantidade)
from pedido p, vendedor v
where p.codigo_ven=v.codigo
group by p.codigo_ven
limit 2;

#c) o que outro fez
select p.codigo_ven, avg(p.quantidade)
from pedido p
where p.codigo_ven<=3
group by p.codigo_ven;

